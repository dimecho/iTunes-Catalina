#This AppleScript transfers all playlists from iTunes (iTunes Music Library.xml) to Music App (Catalina 10.15)

(*
1) Open "Music App"
2) Import iTunes (File -> Import)
3) Run the Script (Select "iTunes Music Library.xml")
*)

#version 1.2
-- Fixed playlists with same names (based on persistent ID)

#version 1.1
-- Fixed iPod sync
-- Improved performance

#version 1.0
-- Initial script

use AppleScript version "2.7"
use scripting additions
use framework "iTunesLibrary"

global search_oldPersistentID, search_newPersistentID
set search_oldPersistentID to {}
set search_newPersistentID to {}

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
			
			set playlistPersistentID to value of property list item "Playlist Persistent ID" of playlistID as string
			try
				set playlistFolder to value of property list item "Folder" of playlistID
				
				log ("Folder:" & playlistName & " with ID " & playlistPersistentID)
				
				tell application "Music"
					if not (folder playlist playlistName exists) then
						set folderPersistentID to persistent ID of (make new folder playlist with properties {name:playlistName})
						set end of search_oldPersistentID to playlistPersistentID
						set end of search_newPersistentID to folderPersistentID
					else
						set folderPersistentID to my translateOldNew(playlistPersistentID, playlistName, true)
					end if
				end tell
				
				try
					set parentPersistentID to value of property list item "Parent Persistent ID" of playlistID as string
					log (playlistName & " has a parent folder " & parentPersistentID)
					set parentName to my findParentName(keyPlist, parentPersistentID)
					tell application "Music"
						if not (folder playlist parentName exists) then
							set _folderPersistentID to persistent ID of (make new folder playlist with properties {name:parentName})
							set end of search_oldPersistentID to parentPersistentID
							set end of search_newPersistentID to folderPersistentID
						else
							set _folderPersistentID to my translateOldNew(parentPersistentID, parentName, true)
						end if
						move (first folder playlist whose persistent ID is folderPersistentID) to first folder playlist whose persistent ID is _folderPersistentID
					end tell
				on error
					log (playlistName & " is Root Folder")
				end try
			on error
				log ("Playlist:" & playlistName & " with ID " & playlistPersistentID)
				
				tell application "Music"
					if not (user playlist playlistName exists) then
						set playlistPersistentID to persistent ID of (make new user playlist with properties {name:playlistName})
					else
						set playlistPersistentID to my translateOldNew(playlistPersistentID, playlistName, false)
					end if
					
					set the view of the front browser window to playlist playlistName
					(*
					tell application "System Events" to tell process "Music"
						click menu item "Songs" of menu 1 of menu item "View As" of menu 1 of menu bar item "View" of menu bar 1
					end tell
					*)
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
								if not ((first track of (first user playlist whose persistent ID is playlistPersistentID) whose database ID is database_ID) exists) then
									#This fixes iPod Sync
									copy trackFile to the end of (first user playlist whose persistent ID is playlistPersistentID)
									#This breaks iPod Sync
									#duplicate trackFile to the end of user playlist playlistName
									if trackRating is greater than 0 then
										set rating of trackFile to trackRating
									end if
								end if
							end tell
						end try
					end repeat
				end try
				
				try
					set parentPersistentID to value of property list item "Parent Persistent ID" of playlistID as string
					log (playlistName & " has a parent folder " & parentPersistentID)
					set parentName to my findParentName(keyPlist, parentPersistentID)
					tell application "Music"
						if not (folder playlist parentName exists) then
							set folderPersistentID to persistent ID of (make new folder playlist with properties {name:parentName})
							set end of search_oldPersistentID to parentPersistentID
							set end of search_newPersistentID to folderPersistentID
						else
							set folderPersistentID to my translateOldNew(parentPersistentID, parentName, true)
						end if
						move (first user playlist whose persistent ID is playlistPersistentID) to first folder playlist whose persistent ID is folderPersistentID
					end tell
				end try
			end try
		end if
	end repeat
end tell

on excludePlaylists(playlistName)
	set excludeList to {"Library", "Downloaded", "Music", "Movies", "TV Shows", "Audiobooks"}
	repeat with i from 1 to count excludeList
		if playlistName contains item i of excludeList then
			return true
		end if
	end repeat
	return false
end excludePlaylists

on translateOldNew(_id, _name, _folder)
	
	repeat with i from 1 to count search_oldPersistentID
		if _id contains item i of search_oldPersistentID then
			return item i of search_newPersistentID
		end if
	end repeat
	
	# Playlist was created before script started
	tell application "Music"
		if _folder then
			return persistent ID of folder playlist _name as string
		else
			return persistent ID of user playlist _name as string
		end if
	end tell
end translateOldNew

on findParentName(keyPlist, parentPersistentID)
	
	tell application "System Events"
		repeat with playlistID in keyPlist
			set playlistPersistentID to value of property list item "Playlist Persistent ID" of playlistID as string
			if parentPersistentID is equal to playlistPersistentID then
				set playlistName to value of property list item "Name" of playlistID as string
				
				log ("Parent Found: " & playlistName)
				return playlistName
			end if
		end repeat
	end tell
	return "Uknown"
end findParentName