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
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    H D  System/Applications/Music.app   / ��   �  � � � Q   �� � ��o � k   �{ � �  � � � r   �	 � � � n   � � � � 4   ��n �
�n 
plii � m   � � � � �  P l a y l i s t   I t e m s � o   � ��m�m 0 
playlistid 
playlistID � o      �l�l 0 playlistitems playlistItems �  � � � r  
 � � � n  
 � � � 2  �k
�k 
plii � o  
�j�j 0 playlistitems playlistItems � o      �i�i (0 playlistitemsplist playlistItemsPlist �  � � � l �h�g�f�h  �g  �f   �  ��e � X  { ��d � � k  ,v � �  � � � r  ,@ � � � c  ,< � � � n  ,8 � � � 1  48�c
�c 
valL � n  ,4 � � � 4  -4�b �
�b 
plii � m  03 � � � � �  T r a c k   I D � o  ,-�a�a 0 playlistitem playlistItem � m  8;�`
�` 
TEXT � o      �_�_ 0 trackid trackID �  � � � I AL�^ ��]
�^ .ascrcmnt****      � **** � l AH ��\�[ � b  AH � � � m  AD � � � � �  T r a c k I D :   � o  DG�Z�Z 0 trackid trackID�\  �[  �]   �  � � � l MM�Y�X�W�Y  �X  �W   �  ��V � Q  Mv � ��U � k  Pm � �    r  Pe n  Pa 4  Za�T
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
�' .ascrerr ****      � ****�&  �%  �3  ? WXW l ���$�#�"�$  �#  �"  X Y�!Y O  �mZ[Z k  �l\\ ]^] r  �_`_ l �a� �a 6 �bcb 4 ���d
� 
cTrkd m  ���� c F  �efe = ��ghg 1  ���
� 
pnamh o  ���� 0 	trackname 	trackNamef = �iji 1  � �
� 
pSizj o  �� 0 	tracksize 	trackSize�   �  ` o      �� 0 	trackfile 	trackFile^ klk r  mnm n  opo 1  �
� 
pDIDp o  �� 0 	trackfile 	trackFilen o      �� 0 database_id database_IDl qrq Z  Tst��s H  :uu l 9v��v I 9�w�
� .coredoexnull���     obj w l 5x��x 6 5yzy n  &{|{ 4 !&�}
� 
cTrk} m  $%�� | 4  !�
~
�
 
cPly~ o   �	�	 0 playlistname playlistNamez = )4� 1  *.�
� 
pDID� o  /3�� 0 database_id database_ID�  �  �  �  �  t I =P���
� .coreclon****      � ****� o  =@�� 0 	trackfile 	trackFile� ���
� 
insh� l CL���� n  CL���  ;  KL� 4  CK� �
�  
cUsP� o  GJ���� 0 playlistname playlistName�  �  �  �  �  r ���� Z  Ul������� ? UZ��� o  UX���� 0 trackrating trackRating� m  XY����  � r  ]h��� o  ]`���� 0 trackrating trackRating� n      ��� 1  cg��
�� 
pRte� o  `c���� 0 	trackfile 	trackFile��  ��  ��  [ m  ����v                                                                                      @ alis      HD                             BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    H D  System/Applications/Music.app   / ��  �!   � R      ������
�� .ascrerr ****      � ****��  ��  �U  �V  �d 0 playlistitem playlistItem � o  ���� (0 playlistitemsplist playlistItemsPlist�e   � R      ������
�� .ascrerr ****      � ****��  ��  �o   � ���� Q  ������� k  ���� ��� r  ����� c  ����� n  ����� 1  ����
�� 
valL� n  ����� 4  �����
�� 
plii� m  ���� ��� ( P a r e n t   P e r s i s t e n t   I D� o  ������ 0 
playlistid 
playlistID� m  ����
�� 
TEXT� o      ���� (0 parentpersistentid parentPersistentID� ��� I �������
�� .ascrcmnt****      � ****� l �������� b  ����� b  ����� o  ������ 0 playlistname playlistName� m  ���� ��� *   h a s   a   p a r e n t   f o l d e r  � o  ������ (0 parentpersistentid parentPersistentID��  ��  ��  � ���� n ����� I  ��������� (0 findparentplaylist findParentPlaylist� ��� o  ������ 0 keyplist keyPlist� ��� o  ������ (0 parentpersistentid parentPersistentID� ��� o  ������ 0 playlistname playlistName� ���� m  ����
�� boovfals��  ��  �  f  ����  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��  �� 0 
playlistid 
playlistID v o   W Z���� 0 keyplist keyPlist��   X m   $ '���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   U ��� l     ��������  ��  ��  � ��� i     #��� I      ������� $0 excludeplaylists excludePlaylists� ���� o      ���� 0 playlistname playlistName��  ��  � k     0�� ��� r     
��� J     �� ��� m     �� ���  L i b r a r y� ��� m    �� ���  D o w n l o a d e d� ��� m    �� ��� 
 M u s i c� ��� m    �� ���  M o v i e s� ��� m    �� ���  T V   S h o w s� ���� m    �� ���  A u d i o b o o k s��  � o      ���� 0 excludelist excludeList� ��� Y    -�������� Z    (������� E    ��� o    ���� 0 playlistname playlistName� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 excludelist excludeList� L   " $�� m   " #��
�� boovtrue��  ��  �� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 excludelist excludeList��  ��  � ���� L   . 0�� m   . /��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i   $ '��� I      ������� (0 findparentplaylist findParentPlaylist� ��� o      ���� 0 keyplist keyPlist� ��� o      ���� *0 _parentpersistentid _parentPersistentID� ��� o      ���� 0 _playlistname _playlistName� ���� o      ���� 0 _folder  ��  ��  � O     ���� X    ������ Q    � ��  k    �  l    r    	 n    

 1    ��
�� 
valL n     4    ��
�� 
plii m     �  F o l d e r o    ���� 0 
playlistid 
playlistID	 o      ����  0 playlistfolder playlistFolder ? 9Only process folders, try will fail for regular playlists    � r O n l y   p r o c e s s   f o l d e r s ,   t r y   w i l l   f a i l   f o r   r e g u l a r   p l a y l i s t s  r     * c     ( n     & 1   $ &��
�� 
valL n     $ 4   ! $��
�� 
plii m   " # � , P l a y l i s t   P e r s i s t e n t   I D o     !���� 0 
playlistid 
playlistID m   & '��
�� 
TEXT o      ���� ,0 playlistpersistentid playlistPersistentID   l  + +��������  ��  ��    !��! Z   + �"#����" =  + .$%$ o   + ,���� *0 _parentpersistentid _parentPersistentID% o   , -���� ,0 playlistpersistentid playlistPersistentID# k   1 �&& '(' r   1 9)*) n   1 7+,+ 1   5 7��
�� 
valL, n   1 5-.- 4   2 5��/
�� 
plii/ m   3 400 �11  N a m e. o   1 2���� 0 
playlistid 
playlistID* o      ���� 0 playlistname playlistName( 232 I  : A��4��
�� .ascrcmnt****      � ****4 l  : =5����5 b   : =676 m   : ;88 �99  P a r e n t   F o u n d :  7 o   ; <���� 0 playlistname playlistName��  ��  ��  3 :;: O   B �<=< k   F �>> ?@? Z   F fAB����A H   F OCC l  F ND����D I  F N��E��
�� .coredoexnull���     obj E 4   F J��F
�� 
cFoPF o   H I���� 0 playlistname playlistName��  ��  ��  B I  R b����G
�� .corecrel****      � null��  G ��HI
�� 
koclH m   T U��
�� 
cFoPI ��J��
�� 
prdtJ K   V \KK ��L��
�� 
pnamL o   Y Z���� 0 playlistname playlistName��  ��  ��  ��  @ M��M Z   g �NO��PN o   g h���� 0 _folder  O I  k z��QR
�� .coremovenull���     cPlyQ 4   k o��S
�� 
cFoPS o   m n���� 0 _playlistname _playlistNameR ��T��
�� 
inshT 4   r v�U
� 
cFoPU o   t u�~�~ 0 playlistname playlistName��  ��  P I  } ��}VW
�} .coremovenull���     cPlyV 4   } ��|X
�| 
cUsPX o   � ��{�{ 0 _playlistname _playlistNameW �zY�y
�z 
inshY 4   � ��xZ
�x 
cFoPZ o   � ��w�w 0 playlistname playlistName�y  ��  = m   B C[[v                                                                                      @ alis      HD                             BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    H D  System/Applications/Music.app   / ��  ; \]\ l  � ��v�u�t�v  �u  �t  ] ^_^ Q   � �`ab` k   � �cc ded r   � �fgf n   � �hih 1   � ��s
�s 
valLi n   � �jkj 4   � ��rl
�r 
pliil m   � �mm �nn ( P a r e n t   P e r s i s t e n t   I Dk o   � ��q�q 0 
playlistid 
playlistIDg o      �p�p (0 parentpersistentid parentPersistentIDe opo I  � ��oq�n
�o .ascrcmnt****      � ****q l  � �r�m�lr b   � �sts b   � �uvu o   � ��k�k 0 playlistname playlistNamev m   � �ww �xx D   a l s o   h a s   a   p a r e n t   . . . l o o k i n g   f o r  t o   � ��j�j (0 parentpersistentid parentPersistentID�m  �l  �n  p y�iy n  � �z{z I   � ��h|�g�h (0 findparentplaylist findParentPlaylist| }~} o   � ��f�f 0 keyplist keyPlist~ � o   � ��e�e (0 parentpersistentid parentPersistentID� ��� o   � ��d�d 0 playlistname playlistName� ��c� m   � ��b
�b boovtrue�c  �g  {  f   � ��i  a R      �a�`�_
�a .ascrerr ****      � ****�`  �_  b I  � ��^��]
�^ .ascrcmnt****      � ****� l  � ���\�[� b   � ���� o   � ��Z�Z 0 playlistname playlistName� m   � ��� ���    i s   R o o t   F o l d e r�\  �[  �]  _ ��Y�  S   � ��Y  ��  ��  ��   R      �X�W�V
�X .ascrerr ****      � ****�W  �V  ��  �� 0 
playlistid 
playlistID� o    �U�U 0 keyplist keyPlist� m     ���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��T� l     �S�R�Q�S  �R  �Q  �T       �P������P  � �O�N�M�L
�O 
pimr�N $0 excludeplaylists excludePlaylists�M (0 findparentplaylist findParentPlaylist
�L .aevtoappnull  �   � ****� �K��K �  ���� �J �I
�J 
vers�I  � �H��G
�H 
cobj� ��   �F
�F 
osax�G  � �E��D
�E 
cobj� ��   �C (
�C 
frmk�D  � �B��A�@���?�B $0 excludeplaylists excludePlaylists�A �>��> �  �=�= 0 playlistname playlistName�@  � �<�;�:�< 0 playlistname playlistName�; 0 excludelist excludeList�: 0 i  � 	�������9�8�7�9 
�8 .corecnte****       ****
�7 
cobj�? 1�������vE�O !k�j kh ���/ eY h[OY��Of� �6��5�4���3�6 (0 findparentplaylist findParentPlaylist�5 �2��2 �  �1�0�/�.�1 0 keyplist keyPlist�0 *0 _parentpersistentid _parentPersistentID�/ 0 _playlistname _playlistName�. 0 _folder  �4  � 	�-�,�+�*�)�(�'�&�%�- 0 keyplist keyPlist�, *0 _parentpersistentid _parentPersistentID�+ 0 _playlistname _playlistName�* 0 _folder  �) 0 
playlistid 
playlistID�(  0 playlistfolder playlistFolder�' ,0 playlistpersistentid playlistPersistentID�& 0 playlistname playlistName�% (0 parentpersistentid parentPersistentID� ��$�#�"�!� �08�[���������mw����
�$ 
kocl
�# 
cobj
�" .corecnte****       ****
�! 
plii
�  
valL
� 
TEXT
� .ascrcmnt****      � ****
� 
cFoP
� .coredoexnull���     obj 
� 
prdt
� 
pnam� 
� .corecrel****      � null
� 
insh
� .coremovenull���     cPly
� 
cUsP� (0 findparentplaylist findParentPlaylist�  �  �3 �� � ՠ[��l kh  ����/�,E�O���/�,�&E�O��  ����/�,E�O�%j O� J*��/j  *���a �la  Y hO� *��/a *��/l Y *a �/a *��/l UO '��a /�,E�O�a %�%j O)���ea + W X  �a %j OY hW X  h[OY�9U� �������
� .aevtoappnull  �   � ****� k    ���  ,��  7��  M��  T��  �  �  � ��� 0 
playlistid 
playlistID� 0 playlistitem playlistItem� O�
�	����� B� H��� ���� Q����������� j���������� ��������� ������� ��������������������� ����� ��� �
����.����6��NU�����������������������
�
 afdr�doc
�	 
from
� fldmfldu
� .earsffdralis        afdr
� 
alis� 0 	musicpath 	musicPath
� 
prmp
� 
ftyp
� 
dflc� 
�  .sysostdfalis    ��� null
�� 
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
insh
�� .coreclon****      � ****
�� 
pRte�� (0 parentpersistentid parentPersistentID�� (0 findparentplaylist findParentPlaylist�����l �&E�O*����kv��� �,E�O�j Oa �*a �/a ,E` O_ a a /E` O_ a -E` O{_ [a a l kh  �a a /a ,a &E` O)_ k+  A �a a !/a ,E` "W(X # $a %_ %j &O� D*a '_ /j ( 3*a a 'a )a *_ la + ,O*a -_ /*a .k/a /,FOPY hUO��a a 0/E` 1O_ 1a -E` 2Od_ 2[a a l kh �a a 3/a ,a &E` 4Oa 5_ 4%j &O"_ a a 6/a _ 4/E` 7O_ 7a a 8/a ,a &E` 9Oa :_ 9%j &O_ 7a a ;/a ,a <&E` =Oa >_ =%j &OjE` ?O '_ 7a a @/a ,a <&E` ?Oa A_ ?%j &W X # $hO� �*a Bk/a C[[a *,\Z_ 98\[a D,\Z_ =8A1E` EO_ Ea F,E` GO*a -_ /a Bk/a C[a F,\Z_ G81j ( _ Ea H*a '_ /6l IY hO_ ?j _ ?_ Ea J,FY hUW X # $h[OY��W X # $hO ;�a a K/a ,a &E` LO_ a M%_ L%j &O)_ _ L_ fa ++ NW X # $hY h[OY��U ascr  ��ޭ