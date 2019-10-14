#This AppleScript transfers all playlists from iTunes (iTunes Music Library.xml) to Music App (Catalina 10.15)

(*
1) Open "Music App"
2) Import iTunes (File -> Import)
3) Run the Script (Select "iTunes Music Library.xml")
*)

#version 1.1
-- Fixed iPod sync
-- Improved performance

#version 1.0
-- Initial script

use AppleScript version "2.7"
use scripting additions
use framework "iTunesLibrary"

# Performance Fix
-------------------------------
global search_parentPersistentID, search_playlistName
set search_parentPersistentID to {}
set search_playlistName to {}
-------------------------------

set musicPath to (path to music folder from user domain) as alias
set iTunesMusicLibrary to POSIX path of (choose file with prompt "Please choose iTunes Music Library.xml" of type {"XML"} default location musicPath)

activate application "Music"

tell application "System Events"
	
	set plistFile to contents of property list file iTunesMusicLibrary
	set playlistPlist to property list item "Playlists" of plistFile
	set keyPlist to every property list item of playlistPlist
	
	repeat with playlistID in keyPlist
		
		set playlistName to value of property list item "Name" of playlistID as string
		
		if not (my excludePlaylists(playlistName)) then
			try
				set playlistFolder to value of property list item "Folder" of playlistID
			on error
				log ("Playlist:" & playlistName)
				
				tell application "Music"
					if playlistName is equal to "Music" then #Playlist from old iTunes 10? cannot be named "Music"
						set playlistName to "_Music"
					end if
					if not (user playlist playlistName exists) then
						make new user playlist with properties {name:playlistName}
						set the view of the front browser window to playlist playlistName
						(*
						tell application "System Events" to tell process "Music"
							click menu item "Songs" of menu 1 of menu item "View As" of menu 1 of menu bar item "View" of menu bar 1
						end tell
						*)
					end if
				end tell
				try
					set playlistItems to property list item "Playlist Items" of playlistID
					set playlistItemsPlist to every property list item of playlistItems
					
					repeat with playlistItem in playlistItemsPlist
						set trackID to value of property list item "Track ID" of playlistItem as string
						log ("TrackID: " & trackID)
						
						try
							set findTrack to property list item trackID of property list item "Tracks" of plistFile
							set trackName to value of property list item "Name" of findTrack as string
							log ("Song Name: " & trackName)
							
							set trackSize to value of property list item "Size" of findTrack as integer
							log ("Track Size: " & trackSize)
							
							set trackRating to 0
							try
								set trackRating to value of property list item "Rating" of findTrack as integer
								log ("Rating: " & trackRating)
							end try
							
							tell application "Music"
								set trackFile to (first track whose name is trackName and size is equal to trackSize)
								set database_ID to database ID of trackFile
								if not ((first track of playlist playlistName whose database ID is database_ID) exists) then
									#This fixes iPod Sync
									copy trackFile to the end of user playlist playlistName
									#This breaks iPod Sync
									#duplicate trackFile to the end of user playlist playlistName
								end if
								if trackRating is greater than 0 then
									set rating of trackFile to trackRating
								end if
							end tell
						end try
					end repeat
				end try
				
				try
					set parentPersistentID to value of property list item "Parent Persistent ID" of playlistID as string
					log (playlistName & " has a parent folder " & parentPersistentID)
					
					# Performance Fix
					-------------------------------
					set alreadyProcessed to false
					repeat with i from 1 to count search_parentPersistentID
						if parentPersistentID contains item i of search_parentPersistentID then
							log ("Parent Found: " & item i of search_playlistName)
							tell application "Music" to move user playlist playlistName to folder playlist (item i of search_playlistName as string)
							set alreadyProcessed to true
							exit repeat
						end if
					end repeat
					-------------------------------
					if not alreadyProcessed then
						my findParentPlaylist(keyPlist, parentPersistentID, playlistName, false)
					end if
				end try
			end try
		end if
	end repeat
end tell

on excludePlaylists(playlistName)
	set excludeList to {"Library", "Downloaded", "Movies", "TV Shows", "Audiobooks"}
	repeat with i from 1 to count excludeList
		if playlistName contains item i of excludeList then
			return true
		end if
	end repeat
	return false
end excludePlaylists

on findParentPlaylist(keyPlist, _parentPersistentID, _playlistName, _folder)
	
	tell application "System Events"
		repeat with playlistID in keyPlist
			try
				set playlistFolder to value of property list item "Folder" of playlistID #Only process folders, try will fail for regular playlists
				set playlistPersistentID to value of property list item "Playlist Persistent ID" of playlistID as string
				
				if _parentPersistentID is equal to playlistPersistentID then
					set playlistName to value of property list item "Name" of playlistID
					
					log ("Parent Found: " & playlistName)
					
					tell application "Music"
						if not (folder playlist playlistName exists) then
							make new folder playlist with properties {name:playlistName}
						end if
						if _folder then
							move folder playlist _playlistName to folder playlist playlistName
						else
							move user playlist _playlistName to folder playlist playlistName
						end if
					end tell
					
					# Performance Fix
					-------------------------------
					set end of search_parentPersistentID to playlistPersistentID
					set end of search_playlistName to playlistName
					-------------------------------
					
					try
						set parentPersistentID to value of property list item "Parent Persistent ID" of playlistID
						log (playlistName & " also has a parent ...looking for " & parentPersistentID)
						my findParentPlaylist(keyPlist, parentPersistentID, playlistName, true)
					on error
						log (playlistName & " is Root Folder")
					end try
					exit repeat
				end if
			end try
		end repeat
	end tell
end findParentPlaylist
