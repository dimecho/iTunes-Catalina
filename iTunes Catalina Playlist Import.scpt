FasdUAS 1.101.10   ��   ��    k             l     ��  ��    s mThis AppleScript transfers all playlists from iTunes (iTunes Music Library.xml) to Music App (Catalina 10.15)     � 	 	 � T h i s   A p p l e S c r i p t   t r a n s f e r s   a l l   p l a y l i s t s   f r o m   i T u n e s   ( i T u n e s   M u s i c   L i b r a r y . x m l )   t o   M u s i c   A p p   ( C a t a l i n a   1 0 . 1 5 )   
  
 l     ��������  ��  ��        l      ��  ��    s m
1) Open "Music App"
2) Import iTunes (File -> Import)
3) Run the Script (Select "iTunes Music Library.xml")
     �   � 
 1 )   O p e n   " M u s i c   A p p " 
 2 )   I m p o r t   i T u n e s   ( F i l e   - >   I m p o r t ) 
 3 )   R u n   t h e   S c r i p t   ( S e l e c t   " i T u n e s   M u s i c   L i b r a r y . x m l " ) 
      l     ��������  ��  ��        l     ��  ��     version 1.0     �    v e r s i o n   1 . 0      l     ��������  ��  ��        x     ��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �      2 . 7��     ! " ! x    �� #����   # 2  	 ��
�� 
osax��   "  $ % $ x     �� &����   & 4    �� '
�� 
frmk ' m     ( ( � ) )  i T u n e s L i b r a r y��   %  * + * l     ��������  ��  ��   +  , - , l     .���� . r      / 0 / c     	 1 2 1 l     3���� 3 I    �� 4 5
�� .earsffdralis        afdr 4 m     ��
�� afdr�doc 5 �� 6��
�� 
from 6 m    ��
�� fldmfldu��  ��  ��   2 m    ��
�� 
alis 0 o      ���� 0 	musicpath 	musicPath��  ��   -  7 8 7 l    9���� 9 r     : ; : n     < = < 1    ��
�� 
psxp = l    >���� > I   ���� ?
�� .sysostdfalis    ��� null��   ? �� @ A
�� 
prmp @ m     B B � C C L P l e a s e   c h o o s e   i T u n e s   M u s i c   L i b r a r y . x m l A �� D E
�� 
ftyp D J     F F  G�� G m     H H � I I  X M L��   E �� J��
�� 
dflc J o    ���� 0 	musicpath 	musicPath��  ��  ��   ; o      ���� (0 itunesmusiclibrary iTunesMusicLibrary��  ��   8  K L K l     ��������  ��  ��   L  M N M l   # O���� O I   #�� P��
�� .miscactvnull��� ��� null P m     Q Qv                                                                                      @ alis      HD                             BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    H D  System/Applications/Music.app   / ��  ��  ��  ��   N  R S R l     ��������  ��  ��   S  T U T l  $� V���� V O   $� W X W k   *� Y Y  Z [ Z l  * *��������  ��  ��   [  \ ] \ r   * 8 ^ _ ^ n   * 4 ` a ` 1   0 4��
�� 
pcnt a 4   * 0�� b
�� 
plif b o   . /���� (0 itunesmusiclibrary iTunesMusicLibrary _ o      ���� 0 	plistfile 	plistFile ]  c d c r   9 G e f e n   9 C g h g 4   < C�� i
�� 
plii i m   ? B j j � k k  P l a y l i s t s h o   9 <���� 0 	plistfile 	plistFile f o      ���� 0 playlistplist playlistPlist d  l m l r   H S n o n n   H O p q p 2   K O��
�� 
plii q o   H K���� 0 playlistplist playlistPlist o o      ���� 0 keyplist keyPlist m  r s r l  T T��������  ��  ��   s  t�� t X   T� u�� v u k   j� w w  x y x l  j j��������  ��  ��   y  z { z r   j ~ | } | c   j z ~  ~ n   j v � � � 1   r v��
�� 
valL � n   j r � � � 4   k r�� �
�� 
plii � m   n q � � � � �  N a m e � o   j k���� 0 
playlistid 
playlistID  m   v y��
�� 
TEXT } o      ���� 0 playlistname playlistName {  � � � l   ��������  ��  ��   �  ��� � Z   � � ����� � H    � � � l   � ����� � n   � � � � I   � ��� ����� $0 excludeplaylists excludePlaylists �  ��� � o   � ����� 0 playlistname playlistName��  ��   �  f    ���  ��   � Q   �� � � � � r   � � � � � n   � � � � � 1   � ���
�� 
valL � n   � � � � � 4   � ��� �
�� 
plii � m   � � � � � � �  F o l d e r � o   � ����� 0 
playlistid 
playlistID � o      ����  0 playlistfolder playlistFolder � R      ������
�� .ascrerr ****      � ****��  ��   � k   �� � �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ����� � b   � � � � � m   � � � � � � �  P l a y l i s t : � o   � ����� 0 playlistname playlistName��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � O   � � � � � Z   � � � ����� � H   � � � � l  � � ����� � I  � ��� ���
�� .coredoexnull���     obj  � 4   � ��� �
�� 
cUsP � o   � ����� 0 playlistname playlistName��  ��  ��   � k   � � � �  � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cUsP � � ��~
� 
prdt � K   � � � � �} ��|
�} 
pnam � o   � ��{�{ 0 playlistname playlistName�|  �~   �  � � � r   � � � � � 4   � ��z �
�z 
cPly � o   � ��y�y 0 playlistname playlistName � l      ��x�w � n       � � � 1   � ��v
�v 
pPly � l  � � ��u�t � 4  � ��s �
�s 
cBrW � m   � ��r�r �u  �t  �x  �w   �  ��q � l   � ��p � ��p   � � �						tell application "System Events" to tell process "Music"							click menu item "Songs" of menu 1 of menu item "View As" of menu 1 of menu bar item "View" of menu bar 1						end tell
						    � � � ��  	 	 	 	 	 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   t e l l   p r o c e s s   " M u s i c "  	 	 	 	 	 	 	 c l i c k   m e n u   i t e m   " S o n g s "   o f   m e n u   1   o f   m e n u   i t e m   " V i e w   A s "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " V i e w "   o f   m e n u   b a r   1  	 	 	 	 	 	 e n d   t e l l 
 	 	 	 	 	 	�q  ��  ��   � m   � � � �v                                                                                      @ alis      HD                             BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    H D  System/Applications/Music.app   / ��   �  ��o � Q   �� � ��n � k   �� � �  � � � r   �	 � � � n   � � � � 4   ��m �
�m 
plii � m   � � � � �  P l a y l i s t   I t e m s � o   � ��l�l 0 
playlistid 
playlistID � o      �k�k 0 playlistitems playlistItems �  � � � r  
 � � � n  
 � � � 2  �j
�j 
plii � o  
�i�i 0 playlistitems playlistItems � o      �h�h (0 playlistitemsplist playlistItemsPlist �  � � � l �g�f�e�g  �f  �e   �  � � � X  w ��d � � k  ,r � �  � � � r  ,@ � � � c  ,< � � � n  ,8 � � � 1  48�c
�c 
valL � n  ,4 � � � 4  -4�b �
�b 
plii � m  03 � � � � �  T r a c k   I D � o  ,-�a�a 0 playlistitem playlistItem � m  8;�`
�` 
TEXT � o      �_�_ 0 trackid trackID �  � � � I AL�^ ��]
�^ .ascrcmnt****      � **** � l AH ��\�[ � b  AH � � � m  AD � � � � �  T r a c k I D :   � o  DG�Z�Z 0 trackid trackID�\  �[  �]   �  � � � l MM�Y�X�W�Y  �X  �W   �  ��V � Q  Mr � ��U � k  Pi � �    r  Pe n  Pa 4  Za�T
�T 
plii o  ]`�S�S 0 trackid trackID n  PZ 4  SZ�R	
�R 
plii	 m  VY

 �  T r a c k s o  PS�Q�Q 0 	plistfile 	plistFile o      �P�P 0 	findtrack 	findTrack  r  f| c  fx n  ft 1  pt�O
�O 
valL n  fp 4  ip�N
�N 
plii m  lo �  N a m e o  fi�M�M 0 	findtrack 	findTrack m  tw�L
�L 
TEXT o      �K�K 0 	trackname 	trackName  I }��J�I
�J .ascrcmnt****      � **** l }��H�G b  }� m  }� �    S o n g   N a m e :   o  ���F�F 0 	trackname 	trackName�H  �G  �I   !"! l ���E�D�C�E  �D  �C  " #$# r  ��%&% c  ��'(' n  ��)*) 1  ���B
�B 
valL* n  ��+,+ 4  ���A-
�A 
plii- m  ��.. �//  S i z e, o  ���@�@ 0 	findtrack 	findTrack( m  ���?
�? 
long& o      �>�> 0 	tracksize 	trackSize$ 010 I ���=2�<
�= .ascrcmnt****      � ****2 l ��3�;�:3 b  ��454 m  ��66 �77  T r a c k   S i z e :  5 o  ���9�9 0 	tracksize 	trackSize�;  �:  �<  1 898 l ���8�7�6�8  �7  �6  9 :;: r  ��<=< m  ���5�5  = o      �4�4 0 trackrating trackRating; >?> Q  ��@A�3@ k  ��BB CDC r  ��EFE c  ��GHG n  ��IJI 1  ���2
�2 
valLJ n  ��KLK 4  ���1M
�1 
pliiM m  ��NN �OO  R a t i n gL o  ���0�0 0 	findtrack 	findTrackH m  ���/
�/ 
longF o      �.�. 0 trackrating trackRatingD P�-P I ���,Q�+
�, .ascrcmnt****      � ****Q l ��R�*�)R b  ��STS m  ��UU �VV  R a t i n g :  T o  ���(�( 0 trackrating trackRating�*  �)  �+  �-  A R      �'�&�%
�' .ascrerr ****      � ****�&  �%  �3  ? WXW l ���$�#�"�$  �#  �"  X Y�!Y O  �iZ[Z k  �h\\ ]^] r  �_`_ l �a� �a 6 �bcb 4 ���d
� 
cTrkd m  ���� c F  �efe = ��ghg 1  ���
� 
pnamh o  ���� 0 	trackname 	trackNamef = �iji 1  � �
� 
pSizj o  �� 0 	tracksize 	trackSize�   �  ` o      �� 0 	trackfile 	trackFile^ klk r  mnm n  opo 1  �
� 
pDIDp o  �� 0 	trackfile 	trackFilen o      �� 0 database_id database_IDl qrq Z  Pst��s H  :uu l 9v��v I 9�w�
� .coredoexnull���     obj w l 5x��x 6 5yzy n  &{|{ 4 !&�}
� 
cTrk} m  $%�� | 4  !�
~
�
 
cPly~ o   �	�	 0 playlistname playlistNamez = )4� 1  *.�
� 
pDID� o  /3�� 0 database_id database_ID�  �  �  �  �  t k  =L�� ��� l ==����  �  This fixes iPod Sync   � ��� ( T h i s   f i x e s   i P o d   S y n c� ��� s  =J��� o  =@�� 0 	trackfile 	trackFile� l     ���� n      ���  ;  HI� 4  @H��
� 
cUsP� o  DG�� 0 playlistname playlistName�  �  � ��� l KK� ���   �  This breaks iPod Sync   � ��� * T h i s   b r e a k s   i P o d   S y n c� ���� l KK������  � B <duplicate trackFile to the end of user playlist playlistName   � ��� x d u p l i c a t e   t r a c k F i l e   t o   t h e   e n d   o f   u s e r   p l a y l i s t   p l a y l i s t N a m e��  �  �  r ���� Z  Qh������� ? QV��� o  QT���� 0 trackrating trackRating� m  TU����  � r  Yd��� o  Y\���� 0 trackrating trackRating� n      ��� 1  _c��
�� 
pRte� o  \_���� 0 	trackfile 	trackFile��  ��  ��  [ m  ����v                                                                                      @ alis      HD                             BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    H D  System/Applications/Music.app   / ��  �!   � R      ������
�� .ascrerr ****      � ****��  ��  �U  �V  �d 0 playlistitem playlistItem � o  ���� (0 playlistitemsplist playlistItemsPlist � ��� l xx��������  ��  ��  � ��� r  x���� c  x���� n  x���� 1  ����
�� 
valL� n  x���� 4  y����
�� 
plii� m  |�� ��� ( P a r e n t   P e r s i s t e n t   I D� o  xy���� 0 
playlistid 
playlistID� m  ����
�� 
TEXT� o      ���� (0 parentpersistentid parentPersistentID� ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� b  ����� o  ������ 0 playlistname playlistName� m  ���� ��� *   h a s   a   p a r e n t   f o l d e r  � o  ������ (0 parentpersistentid parentPersistentID��  ��  ��  � ���� n ����� I  ��������� (0 findparentplaylist findParentPlaylist� ��� o  ������ 0 keyplist keyPlist� ��� o  ������ (0 parentpersistentid parentPersistentID� ��� o  ������ 0 playlistname playlistName� ���� m  ����
�� boovfals��  ��  �  f  ����   � R      ������
�� .ascrerr ****      � ****��  ��  �n  �o  ��  ��  ��  �� 0 
playlistid 
playlistID v o   W Z���� 0 keyplist keyPlist��   X m   $ '���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   U ��� l     ��������  ��  ��  � ��� i     #��� I      ������� $0 excludeplaylists excludePlaylists� ���� o      ���� 0 playlistname playlistName��  ��  � k     0�� ��� r     
��� J     �� ��� m     �� ���  L i b r a r y� ��� m    �� ���  D o w n l o a d e d� ��� m    �� ��� 
 M u s i c� ��� m    �� ���  M o v i e s� ��� m    �� ���  T V   S h o w s� ���� m    �� ���  A u d i o b o o k s��  � o      ���� 0 excludelist excludeList� ��� Y    -�������� Z    (������� E    ��� o    ���� 0 playlistname playlistName� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 excludelist excludeList� L   " $�� m   " #��
�� boovtrue��  ��  �� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 excludelist excludeList��  ��  � ���� L   . 0�� m   . /��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   $ '   I      ������ (0 findparentplaylist findParentPlaylist  o      ���� 0 keyplist keyPlist  o      ���� *0 _parentpersistentid _parentPersistentID  o      ���� 0 _playlistname _playlistName 	��	 o      ���� 0 _folder  ��  ��   O     �

 X    ��� Q    ��� k    �  l    r     n     1    ��
�� 
valL n     4    ��
�� 
plii m     �  F o l d e r o    ���� 0 
playlistid 
playlistID o      ����  0 playlistfolder playlistFolder ? 9Only process folders, try will fail for regular playlists    � r O n l y   p r o c e s s   f o l d e r s ,   t r y   w i l l   f a i l   f o r   r e g u l a r   p l a y l i s t s  !  r     *"#" c     ($%$ n     &&'& 1   $ &��
�� 
valL' n     $()( 4   ! $��*
�� 
plii* m   " #++ �,, , P l a y l i s t   P e r s i s t e n t   I D) o     !���� 0 
playlistid 
playlistID% m   & '��
�� 
TEXT# o      ���� ,0 playlistpersistentid playlistPersistentID! -.- l  + +��������  ��  ��  . /��/ Z   + �01����0 =  + .232 o   + ,���� *0 _parentpersistentid _parentPersistentID3 o   , -���� ,0 playlistpersistentid playlistPersistentID1 k   1 �44 565 r   1 9787 n   1 79:9 1   5 7��
�� 
valL: n   1 5;<; 4   2 5��=
�� 
plii= m   3 4>> �??  N a m e< o   1 2���� 0 
playlistid 
playlistID8 o      ���� 0 playlistname playlistName6 @A@ I  : A��B��
�� .ascrcmnt****      � ****B l  : =C����C b   : =DED m   : ;FF �GG  P a r e n t   F o u n d :  E o   ; <���� 0 playlistname playlistName��  ��  ��  A HIH O   B �JKJ k   F �LL MNM Z   F fOP����O H   F OQQ l  F NR����R I  F N��S��
�� .coredoexnull���     obj S 4   F J��T
�� 
cFoPT o   H I���� 0 playlistname playlistName��  ��  ��  P I  R b����U
�� .corecrel****      � null��  U ��VW
�� 
koclV m   T U��
�� 
cFoPW ��X��
�� 
prdtX K   V \YY ��Z��
�� 
pnamZ o   Y Z���� 0 playlistname playlistName��  ��  ��  ��  N [��[ Z   g �\]��^\ o   g h���� 0 _folder  ] I  k z��_`
�� .coremovenull���     cPly_ 4   k o��a
�� 
cFoPa o   m n���� 0 _playlistname _playlistName` ��b��
�� 
inshb 4   r v��c
�� 
cFoPc o   t u�� 0 playlistname playlistName��  ��  ^ I  } ��~de
�~ .coremovenull���     cPlyd 4   } ��}f
�} 
cUsPf o   � ��|�| 0 _playlistname _playlistNamee �{g�z
�{ 
inshg 4   � ��yh
�y 
cFoPh o   � ��x�x 0 playlistname playlistName�z  ��  K m   B Ciiv                                                                                      @ alis      HD                             BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    H D  System/Applications/Music.app   / ��  I jkj l  � ��w�v�u�w  �v  �u  k lml Q   � �nopn k   � �qq rsr r   � �tut n   � �vwv 1   � ��t
�t 
valLw n   � �xyx 4   � ��sz
�s 
pliiz m   � �{{ �|| ( P a r e n t   P e r s i s t e n t   I Dy o   � ��r�r 0 
playlistid 
playlistIDu o      �q�q (0 parentpersistentid parentPersistentIDs }~} I  � ��p�o
�p .ascrcmnt****      � **** l  � ���n�m� b   � ���� b   � ���� o   � ��l�l 0 playlistname playlistName� m   � ��� ��� D   a l s o   h a s   a   p a r e n t   . . . l o o k i n g   f o r  � o   � ��k�k (0 parentpersistentid parentPersistentID�n  �m  �o  ~ ��j� n  � ���� I   � ��i��h�i (0 findparentplaylist findParentPlaylist� ��� o   � ��g�g 0 keyplist keyPlist� ��� o   � ��f�f (0 parentpersistentid parentPersistentID� ��� o   � ��e�e 0 playlistname playlistName� ��d� m   � ��c
�c boovtrue�d  �h  �  f   � ��j  o R      �b�a�`
�b .ascrerr ****      � ****�a  �`  p I  � ��_��^
�_ .ascrcmnt****      � ****� l  � ���]�\� b   � ���� o   � ��[�[ 0 playlistname playlistName� m   � ��� ���    i s   R o o t   F o l d e r�]  �\  �^  m ��Z�  S   � ��Z  ��  ��  ��   R      �Y�X�W
�Y .ascrerr ****      � ****�X  �W  ��  �� 0 
playlistid 
playlistID o    �V�V 0 keyplist keyPlist m     ���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��U� l     �T�S�R�T  �S  �R  �U       �Q������Q  � �P�O�N�M
�P 
pimr�O $0 excludeplaylists excludePlaylists�N (0 findparentplaylist findParentPlaylist
�M .aevtoappnull  �   � ****� �L��L �  ���� �K �J
�K 
vers�J  � �I��H
�I 
cobj� ��   �G
�G 
osax�H  � �F��E
�F 
cobj� ��   �D (
�D 
frmk�E  � �C��B�A���@�C $0 excludeplaylists excludePlaylists�B �?��? �  �>�> 0 playlistname playlistName�A  � �=�<�;�= 0 playlistname playlistName�< 0 excludelist excludeList�; 0 i  � 	�������:�9�8�: 
�9 .corecnte****       ****
�8 
cobj�@ 1�������vE�O !k�j kh ���/ eY h[OY��Of� �7�6�5���4�7 (0 findparentplaylist findParentPlaylist�6 �3��3 �  �2�1�0�/�2 0 keyplist keyPlist�1 *0 _parentpersistentid _parentPersistentID�0 0 _playlistname _playlistName�/ 0 _folder  �5  � 	�.�-�,�+�*�)�(�'�&�. 0 keyplist keyPlist�- *0 _parentpersistentid _parentPersistentID�, 0 _playlistname _playlistName�+ 0 _folder  �* 0 
playlistid 
playlistID�)  0 playlistfolder playlistFolder�( ,0 playlistpersistentid playlistPersistentID�' 0 playlistname playlistName�& (0 parentpersistentid parentPersistentID� ��%�$�#�"�!+� >F�i���������{�����
�% 
kocl
�$ 
cobj
�# .corecnte****       ****
�" 
plii
�! 
valL
�  
TEXT
� .ascrcmnt****      � ****
� 
cFoP
� .coredoexnull���     obj 
� 
prdt
� 
pnam� 
� .corecrel****      � null
� 
insh
� .coremovenull���     cPly
� 
cUsP� (0 findparentplaylist findParentPlaylist�  �  �4 �� � ՠ[��l kh  ����/�,E�O���/�,�&E�O��  ����/�,E�O�%j O� J*��/j  *���a �la  Y hO� *��/a *��/l Y *a �/a *��/l UO '��a /�,E�O�a %�%j O)���ea + W X  �a %j OY hW X  h[OY�9U� �������
� .aevtoappnull  �   � ****� k    ���  ,��  7��  M��  T��  �  �  � ��� 0 
playlistid 
playlistID� 0 playlistitem playlistItem� M��
�	���� B� H���� �� Q����������� j���������� ��������� ������� ��������������������� ����� ��� �
����.����6��NU�������������������
� afdr�doc
�
 
from
�	 fldmfldu
� .earsffdralis        afdr
� 
alis� 0 	musicpath 	musicPath
� 
prmp
� 
ftyp
� 
dflc� 
� .sysostdfalis    ��� null
�  
psxp�� (0 itunesmusiclibrary iTunesMusicLibrary
�� .miscactvnull��� ��� null
�� 
plif
�� 
pcnt�� 0 	plistfile 	plistFile
�� 
plii�� 0 playlistplist playlistPlist�� 0 keyplist keyPlist
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
valL
�� 
TEXT�� 0 playlistname playlistName�� $0 excludeplaylists excludePlaylists��  0 playlistfolder playlistFolder��  ��  
�� .ascrcmnt****      � ****
�� 
cUsP
�� .coredoexnull���     obj 
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
cPly
�� 
cBrW
�� 
pPly�� 0 playlistitems playlistItems�� (0 playlistitemsplist playlistItemsPlist�� 0 trackid trackID�� 0 	findtrack 	findTrack�� 0 	trackname 	trackName
�� 
long�� 0 	tracksize 	trackSize�� 0 trackrating trackRating
�� 
cTrk�  
�� 
pSiz�� 0 	trackfile 	trackFile
�� 
pDID�� 0 database_id database_ID
�� 
pRte�� (0 parentpersistentid parentPersistentID�� (0 findparentplaylist findParentPlaylist�����l �&E�O*����kv��� �,E�O�j Oa �*a �/a ,E` O_ a a /E` O_ a -E` Ok_ [a a l kh  �a a /a ,a &E` O)_ k+  1 �a a !/a ,E` "WX # $a %_ %j &O� D*a '_ /j ( 3*a a 'a )a *_ la + ,O*a -_ /*a .k/a /,FOPY hUO��a a 0/E` 1O_ 1a -E` 2O`_ 2[a a l kh �a a 3/a ,a &E` 4Oa 5_ 4%j &O_ a a 6/a _ 4/E` 7O_ 7a a 8/a ,a &E` 9Oa :_ 9%j &O_ 7a a ;/a ,a <&E` =Oa >_ =%j &OjE` ?O '_ 7a a @/a ,a <&E` ?Oa A_ ?%j &W X # $hO� �*a Bk/a C[[a *,\Z_ 98\[a D,\Z_ =8A1E` EO_ Ea F,E` GO*a -_ /a Bk/a C[a F,\Z_ G81j ( _ E*a '_ /6GOPY hO_ ?j _ ?_ Ea H,FY hUW X # $h[OY��O�a a I/a ,a &E` JO_ a K%_ J%j &O)_ _ J_ fa ++ LW X # $hY h[OY��U ascr  ��ޭ