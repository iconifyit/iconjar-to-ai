FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 node_app    m        � 	 	 & / u s r / l o c a l / b i n / n o d e   
  
 l     ��������  ��  ��     ��  i        I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    k    D       l     ��������  ��  ��        r         c         n         1   	 ��
�� 
psxp  l    	 ����  b     	    l     ����  I    ��   
�� .earsffdralis        afdr   f        �� !��
�� 
rtyp ! m    ��
�� 
ctxt��  ��  ��    m     " " � # #  : :��  ��    m    ��
�� 
TEXT  o      ���� 0 _here_ _HERE_   $ % $ r     & ' & I   �� (��
�� .sysoloadscpt        file ( l    )���� ) c     * + * b     , - , o    ���� 0 _here_ _HERE_ - m     . . � / / 6 t o o l s / o a s / s c r i p t _ t o o l s . s c p t + m    ��
�� 
TEXT��  ��  ��   ' o      ���� 0 scripttools ScriptTools %  0 1 0 l   ��������  ��  ��   1  2�� 2 O   D 3 4 3 k    C 5 5  6 7 6 r     / 8 9 8 b     - : ; : n     + < = < 1   ) +��
�� 
psxp = l    ) >���� > b     ) ? @ ? l    ' A���� A I    '�� B C
�� .earsffdralis        afdr B  f     ! C �� D��
�� 
rtyp D m   " #��
�� 
ctxt��  ��  ��   @ m   ' ( E E � F F  : :��  ��   ; m   + , G G � H H  s e t u p . s h 9 o      ���� 0 appname APPNAME 7  I J I l  0 0��������  ��  ��   J  K L K r   0 < M N M I   0 6�� O���� 	0 which   O  P�� P m   1 2 Q Q � R R  n o d e��  ��   N o      ���� 0 node_app   L  S T S l  = =��������  ��  ��   T  U V U Z   = } W X���� W H   = H Y Y I   = G�� Z���� 0 file_exists   Z  [�� [ o   > C���� 0 node_app  ��  ��   X r   K y \ ] \ n   K s ^ _ ^ 1   o s��
�� 
ttxt _ l  K o `���� ` I  K o�� a b
�� .sysodlogaskr        TEXT a m   K N c c � d d � T h e   n o d e   a p p   c o u l d   n o t   b e   f o u n d .   P l e a s e   e n t e r   t h e   p a t h   t o   t h e   a p p   a n d   c l i c k   ` C o n t i n u e ` . b �� e f
�� 
dtxt e m   Q T g g � h h   f �� i j
�� 
disp i m   W X����  j �� k l
�� 
btns k J   [ c m m  n o n m   [ ^ p p � q q  C a n c e l o  r�� r m   ^ a s s � t t  C o n t i n u e��   l �� u��
�� 
dflt u m   f i v v � w w  C o n t i n u e��  ��  ��   ] o      ���� 0 node_app  ��  ��   V  x y x l  ~ ~��������  ��  ��   y  z { z l  ~ ~�� | }��   | Z T set user to do shell script "/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'"    } � ~ ~ �   s e t   u s e r   t o   d o   s h e l l   s c r i p t   " / b i n / l s   - l   / d e v / c o n s o l e   |   / u s r / b i n / a w k   ' {   p r i n t   $ 3   } ' " {   �  l  ~ ~��������  ��  ��   �  � � � l  ~ ~�� � ���   �   Run the node main script    � � � � 2   R u n   t h e   n o d e   m a i n   s c r i p t �  ��� � Q   ~C � � � � k   � � �  � � � l  � ��� � ���   � e _ set destination to POSIX path of (choose folder with prompt "Please select an output folder:")    � � � � �   s e t   d e s t i n a t i o n   t o   P O S I X   p a t h   o f   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P l e a s e   s e l e c t   a n   o u t p u t   f o l d e r : " ) �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � � � � � � �  i c o n j a r - t o - a i � o      ���� 0 
foldername 
folderName �  � � � r   � � � � � m   � � � � � � �   � o      ���� "0 thetargetfolder theTargetFolder �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � I  � ����� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   � � � � � � � > P l e a s e   s e l e c t   a n   o u t p u t   f o l d e r :��  ��  ��   � o      ���� "0 theparentfolder theParentFolder �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � c   � � � � � b   � � � � � o   � ����� "0 theparentfolder theParentFolder � o   � ����� 0 
foldername 
folderName � m   � ���
�� 
TEXT��  ��   � o      ���� "0 thetargetfolder theTargetFolder �  � � � l  � ���������  ��  ��   �  � � � V   � � � � � k   � � � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � I  � ����� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � b   � � � � � b   � � � � � m   � � � � � � �  F o l d e r   � o   � ����� 0 
foldername 
folderName � m   � � � � � � � �   a l r e a d y   e x i s t s   i n   t h a t   l o c a t i o n .   P l e a s e   c h o o s e   a   d i f f e r e n t   f o l d e r .��  ��  ��   � o      ���� "0 theparentfolder theParentFolder �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � c   � � � � � b   � � � � � o   � ����� "0 theparentfolder theParentFolder � o   � ����� 0 
foldername 
folderName � m   � ���
�� 
TEXT��  ��   � o      ���� "0 thetargetfolder theTargetFolder��   � I  � ��� ���
�� .coredoexbool       obj  � l  � � ����� � c   � � � � � b   � � � � � o   � ����� "0 theparentfolder theParentFolder � o   � ����� 0 
foldername 
folderName � m   � ��
� 
TEXT��  ��  ��   �  � � � L   � � � � o   � ��~�~ "0 thetargetfolder theTargetFolder �  � � � l  � ��}�|�{�}  �|  �{   �  � � � r   � � � � I   ��z ��y�z 0 get_unique_destination   �  � � � m   � � � � � � �  i c o n j a r - t o - a i �  ��x � m   �  � � � � � t C h o o s e   a   t a r g e t   f o l d e r   f o r   t h e   I c o n J a r   t o   I l l u s t r a t o r   r e p o�x  �y   � o      �w�w 0 destination   �  � � � l 		�v�u�t�v  �u  �t   �  � � � l 		�s � ��s   � { u return "git clone --recursive git@github.com:iconifyit/iconjar-to-ai.git " & destination & "iconjar-to-ai" as string    � � � � �   r e t u r n   " g i t   c l o n e   - - r e c u r s i v e   g i t @ g i t h u b . c o m : i c o n i f y i t / i c o n j a r - t o - a i . g i t   "   &   d e s t i n a t i o n   &   " i c o n j a r - t o - a i "   a s   s t r i n g �  � � � l 		�r � ��r   � W Q do shell script ("chmod 777 " & APPNAME as string) with administrator privileges    � � � � �   d o   s h e l l   s c r i p t   ( " c h m o d   7 7 7   "   &   A P P N A M E   a s   s t r i n g )   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s �  � � � l 		�q � ��q   � W Q do shell script ("source " & APPNAME as string) -- with administrator privileges    � � � � �   d o   s h e l l   s c r i p t   ( " s o u r c e   "   &   A P P N A M E   a s   s t r i n g )   - -   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s �  � � � l 		�p�o�n�p  �o  �n   �    I 	�m�l
�m .sysoexecTEXT���     TEXT l 	�k�j l 	�i�h c  	 b  	 m  			 �

 � g i t   c l o n e   - - r e c u r s i v e   g i t @ g i t h u b . c o m : i c o n i f y i t / i c o n j a r - t o - a i . g i t   o  �g�g 0 destination   m  �f
�f 
TEXT�i  �h  �k  �j  �l   �e l �d�c�b�d  �c  �b  �e   � R      �a
�a .ascrerr ****      � **** o      �`�` 0 errstr errStr �_�^
�_ 
errn o      �]�] 0 errornumber errorNumber�^   � Z   C�\ =  % o   !�[�[ 0 errornumber errorNumber m  !$�Z�Z  I (/�Y�X
�Y .sysodlogaskr        TEXT m  (+ �2 T h e   n o d e   c o m m a n d   l i n e   a p p   c o u l d   n o t   b e   f o u n d   b u t   i s   r e q u i r e d   t o   r u n   t h i s   s c r i p t .   P l e a s e   m a k e   s u r e   n o d e   i s   i n s t a l l e d   i n   / u s r / l o c a l / b i n / n o d e   a n d   t r y   a g a i n .�X  �\   I 2C�W�V
�W .sysodlogaskr        TEXT c  2? l 2=�U�T b  2= b  2; b  27  m  25!! �""  E r r o r :    o  56�S�S 0 errornumber errorNumber m  7:## �$$    -   o  ;<�R�R 0 errstr errStr�U  �T   m  =>�Q
�Q 
TEXT�V  ��   4 o    �P�P 0 scripttools ScriptTools��  ��       
�O%&'()* �+,�O  % �N�M�L�K�J�I�H�G�N 0 node_app  
�M .aevtoappnull  �   � ****�L 0 _here_ _HERE_�K 0 scripttools ScriptTools�J 0 appname APPNAME�I 0 
foldername 
folderName�H "0 thetargetfolder theTargetFolder�G "0 theparentfolder theParentFolder& �-- & / u s r / l o c a l / b i n / n o d e' �F �E�D./�C
�F .aevtoappnull  �   � ****�E  �D  . �B�A�B 0 errstr errStr�A 0 errornumber errorNumber/ 3�@�?�> "�=�<�; .�:�9 E G�8 Q�7�6 c�5 g�4�3 p s�2 v�1�0�/ ��. ��-�, ��+�*�) � � � ��(�'	�&�%0�$!#
�@ 
rtyp
�? 
ctxt
�> .earsffdralis        afdr
�= 
psxp
�< 
TEXT�; 0 _here_ _HERE_
�: .sysoloadscpt        file�9 0 scripttools ScriptTools�8 0 appname APPNAME�7 	0 which  �6 0 file_exists  
�5 
dtxt
�4 
disp
�3 
btns
�2 
dflt�1 
�0 .sysodlogaskr        TEXT
�/ 
ttxt�. 0 
foldername 
folderName�- "0 thetargetfolder theTargetFolder
�, 
prmp
�+ .sysostflalis    ��� null�* "0 theparentfolder theParentFolder
�) .coredoexbool       obj �( 0 get_unique_destination  �' 0 destination  
�& .sysoexecTEXT���     TEXT�% 0 errstr errStr0 �#�"�!
�# 
errn�" 0 errornumber errorNumber�!  �$ �CE)��l �%�,�&E�O��%�&j E�O�%)��l �%�,�%E�O*�k+ Ec   O*b   k+  3a a a a la a a lva a a  a ,Ec   Y hO �a E` Oa E` O*a  a !l "�,E` #O_ #_ %�&�,E` O ?h_ #_ %�&j $*a  a %_ %a &%l "�,E` #O_ #_ %�&�,E` [OY��O_ O*a 'a (l+ )E` *Oa +_ *%�&j ,OPW *X - .�a /  a 0j Y a 1�%a 2%�%�&j U( �11 T / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i /) � 2 3�   2 k      44 565 i     787 I      �9�� 0 
app_exists  9 :�: o      �� 0 appname APPNAME�  �  8 k     ;; <=< r     >?> n     @A@ 1    �
� 
ID  A 4     �B
� 
cappB o    �� 0 appname APPNAME? o      �� 0 appid appID= C�C I  	 �D�
� .coredoexbool       obj D 5   	 �E�
� 
cappE o    �� 0 appid appID
� kfrmID  �  �  6 FGF l     ����  �  �  G HIH i    JKJ I      �L�� 	0 which  L M�M o      �� 0 app_name  �  �  K k     �NN OPO r     QRQ o     �
�
 0 app_name  R o      �	�	 0 the_app  P STS l   ����  �  �  T UVU O    RWXW k    QYY Z[Z l   ����  �  �  [ \]\ Z    ^_��^ H    `` l   a� ��a I   ��b��
�� .coredoexbool       obj b 4    ��c
�� 
cwinc m   
 ���� ��  �   ��  _ I   ������
�� .aevtrappnull��� ��� null��  ��  �  �  ] ded l   ��������  ��  ��  e fgf I   -����h
�� .coredoscnull��� ��� ctxt��  h ��i��
�� 
cmndi b     )jkj b     'lml b     %non b     #pqp m     !rr �ss  w h i c h  q o   ! "���� 0 app_name  o m   # $tt �uu 2   |   / u s r / b i n / a w k   ' {   p r i n t  m m   % &vv �ww  " R E S U L T : "k m   ' (xx �yy 
   $ 1 } '��  g z{z l  . .��������  ��  ��  { |}| I  . 3��~��
�� .sysodelanull��� ��� nmbr~ m   . / ?�      ��  } ��� l  4 4��������  ��  ��  � ��� r   4 >��� c   4 <��� l  4 :������ n   4 :��� 1   8 :��
�� 
pcnt� 4   4 8���
�� 
cwin� m   6 7���� ��  ��  � m   : ;��
�� 
TEXT� o      ���� 0 the_content  � ��� r   ? H��� l  ? F������ I  ? F�����
�� .corecnte****       ****� n   ? B��� 2   @ B��
�� 
cpar� o   ? @���� 0 the_content  ��  ��  ��  � o      ���� 0 n  � ��� l  I I��������  ��  ��  � ���� I  I Q�����
�� .coreclosnull���     obj � 4   I M���
�� 
cwin� m   K L���� ��  ��  X m    ���                                                                                      @ alis    <  Macintosh HD                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  V ��� l  S S��������  ��  ��  � ��� Y   S ��������� Q   ] ����� k   ` ��� ��� r   ` v��� c   ` t��� l  ` r������ n   ` r��� 7  d r����
�� 
cha � m   j l���� � m   m q���� � n   ` d��� 4   a d���
�� 
cpar� o   b c���� 0 i  � o   ` a���� 0 the_content  ��  ��  � m   r s��
�� 
TEXT� o      ���� 0 test_str  � ��� I  w |�����
�� .ascrcmnt****      � ****� o   w x���� 0 test_str  ��  � ���� Z   } �������� =  } ���� o   } ~���� 0 test_str  � m   ~ ��� ���  R E S U L T :� k   � ��� ��� r   � ���� c   � ���� n   � ���� 4   � ����
�� 
cpar� o   � ����� 0 i  � o   � ����� 0 the_content  � m   � ���
�� 
TEXT� o      ���� 0 	this_line  � ���� r   � ���� I   � �������� 0 	trim_line  � ��� o   � ����� 0 	this_line  � ��� o   � ����� 0 test_str  � ���� m   � �����  ��  ��  � o      ���� 0 the_app  ��  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 err_str  � �����
�� 
errn� o      ���� 0 
err_number  ��  � l  � �������  � + % log err_str & "[" & err_number & "]"   � ��� J   l o g   e r r _ s t r   &   " [ "   &   e r r _ n u m b e r   &   " ] "�� 0 i  � m   V W���� � o   W X���� 0 n  ��  � ��� l  � ���������  ��  ��  � ���� L   � ��� o   � ����� 0 the_app  ��  I ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	trim_line  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 
trim_chars  � ���� o      ���� 0 trim_indicator  ��  ��  � k     {�� ��� l     ������  � ' ! 0 = beginning, 1 = end, 2 = both   � ��� B   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h� ��� r     ��� l    ������ n     ��� 1    ��
�� 
leng� l    ������ o     ���� 0 
trim_chars  ��  ��  ��  ��  � o      ���� 0 x  � ��� l   ������  �   TRIM BEGINNING   � ���    T R I M   B E G I N N I N G� ��� Z    >������� E   ��� J    
��    m    ����   �� m    ���� ��  � l  
 ���� o   
 ���� 0 trim_indicator  ��  ��  � V    : Q    5 r    +	
	 c    ) n    ' 7   '��
�� 
cha  l   #���� [    # o     !���� 0 x   m   ! "���� ��  ��   m   $ &������ o    ���� 0 	this_text   m   ' (��
�� 
TEXT
 o      �� 0 	this_text   R      �~�}�|
�~ .ascrerr ****      � ****�}  �|   k   3 5  l  3 3�{�{   8 2 the text contains nothing but the trim characters    � d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s �z L   3 5 m   3 4 �  �z   C    o    �y�y 0 	this_text   l    �x�w  o    �v�v 0 
trim_chars  �x  �w  ��  ��  � !"! l  ? ?�u#$�u  #   TRIM ENDING   $ �%%    T R I M   E N D I N G" &'& Z   ? x()�t�s( E  ? E*+* J   ? C,, -.- m   ? @�r�r . /�q/ m   @ A�p�p �q  + l  C D0�o�n0 o   C D�m�m 0 trim_indicator  �o  �n  ) V   H t121 Q   P o3453 r   S e676 c   S c898 n   S a:;: 7  T a�l<=
�l 
cha < m   X Z�k�k = d   [ `>> l  \ _?�j�i? [   \ _@A@ o   \ ]�h�h 0 x  A m   ] ^�g�g �j  �i  ; o   S T�f�f 0 	this_text  9 m   a b�e
�e 
TEXT7 o      �d�d 0 	this_text  4 R      �c�b�a
�c .ascrerr ****      � ****�b  �a  5 k   m oBB CDC l  m m�`EF�`  E 8 2 the text contains nothing but the trim characters   F �GG d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r sD H�_H L   m oII m   m nJJ �KK  �_  2 D   L OLML o   L M�^�^ 0 	this_text  M l  M NN�]�\N o   M N�[�[ 0 
trim_chars  �]  �\  �t  �s  ' O�ZO L   y {PP o   y z�Y�Y 0 	this_text  �Z  � QRQ l     �X�W�V�X  �W  �V  R STS i    UVU I      �UW�T�U 0 write_to_file  W XYX o      �S�S 0 	this_data  Y Z[Z o      �R�R 0 target_file  [ \�Q\ o      �P�P 0 append_data  �Q  �T  V l    Y]^_] Q     Y`ab` k    :cc ded r    fgf c    hih l   j�O�Nj o    �M�M 0 target_file  �O  �N  i m    �L
�L 
ctxtg l     k�K�Jk o      �I�I 0 target_file  �K  �J  e lml r   	 non l 	 	 p�H�Gp I  	 �Fqr
�F .rdwropenshor       fileq 4   	 �Es
�E 
files o    �D�D 0 target_file  r �Ct�B
�C 
permt m    �A
�A boovtrue�B  �H  �G  o l     u�@�?u o      �>�> 0 open_target_file  �@  �?  m vwv Z   'xy�=�<x =   z{z o    �;�; 0 append_data  { m    �:
�: boovfalsy l 	  #|�9�8| I   #�7}~
�7 .rdwrseofnull���     ****} l   �6�5 o    �4�4 0 open_target_file  �6  �5  ~ �3��2
�3 
set2� m    �1�1  �2  �9  �8  �=  �<  w ��� I  ( 1�0��
�0 .rdwrwritnull���     ****� o   ( )�/�/ 0 	this_data  � �.��
�. 
refn� l  * +��-�,� o   * +�+�+ 0 open_target_file  �-  �,  � �*��)
�* 
wrat� m   , -�(
�( rdwreof �)  � ��� I  2 7�'��&
�' .rdwrclosnull���     ****� l  2 3��%�$� o   2 3�#�# 0 open_target_file  �%  �$  �&  � ��"� L   8 :�� m   8 9�!
�! boovtrue�"  a R      � ��
�  .ascrerr ****      � ****�  �  b k   B Y�� ��� Q   B V���� I  E M���
� .rdwrclosnull���     ****� 4   E I��
� 
file� o   G H�� 0 target_file  �  � R      ���
� .ascrerr ****      � ****�  �  �  � ��� L   W Y�� m   W X�
� boovfals�  ^ - ' (string, file path as string, boolean)   _ ��� N   ( s t r i n g ,   f i l e   p a t h   a s   s t r i n g ,   b o o l e a n )T ��� l     ����  �  �  � ��� i    ��� I      ���� 0 file_exists  � ��� o      �� 0 thefile theFile�  �  � l    ���� O     ��� Z    ����� I   ���

� .coredoexbool       obj � 4    �	�
�	 
file� o    �� 0 thefile theFile�
  � L    �� m    �
� boovtrue�  � L    �� m    �
� boovfals� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �   (String) as Boolean   � ��� (   ( S t r i n g )   a s   B o o l e a n� ��� l     ����  �  �  � ��� i    ��� I      ���� 0 get_unique_destination  � ��� o      � �  0 
foldername 
folderName� ���� o      ���� 0 promptmessage promptMessage��  �  � k     B�� ��� r     ��� m     �� ���  � o      ���� "0 thetargetfolder theTargetFolder� ��� O    ?��� k    >�� ��� r    ��� n    ��� 1    ��
�� 
posx� l   ������ I   �����
�� .sysostflalis    ��� null��  � �����
�� 
prmp� o   
 ���� 0 promptmessage promptMessage��  ��  ��  � o      ���� "0 theparentfolder theParentFolder� ��� r    ��� n    ��� 1    ��
�� 
posx� l   ������ c    ��� b    ��� o    ���� "0 theparentfolder theParentFolder� o    ���� 0 
foldername 
folderName� m    ��
�� 
TEXT��  ��  � o      ���� "0 thetargetfolder theTargetFolder� ��� l   ��������  ��  ��  � ���� V    >��� r   , 9��� I   , 7������� 0 get_unique_destination  � ��� o   - .���� 0 
foldername 
folderName� ���� b   . 3��� b   . 1��� m   . /�� ���  F o l d e r  � o   / 0���� 0 
foldername 
folderName� m   1 2�� ��� �   a l r e a d y   e x i s t s   i n   t h a t   l o c a t i o n .   P l e a s e   c h o o s e   a   d i f f e r e n t   f o l d e r .��  ��  � o      ���� "0 thetargetfolder theTargetFolder� I  " +�����
�� .coredoexbool       obj � l  " '������ c   " '��� b   " %��� o   " #���� "0 theparentfolder theParentFolder� o   # $���� 0 
foldername 
folderName� m   % &��
�� 
TEXT��  ��  ��  ��  � m    ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� L   @ B�� o   @ A���� "0 thetargetfolder theTargetFolder��  � ���� l     ��������  ��  ��  ��  3 �����������  � �������������� 0 
app_exists  �� 	0 which  �� 0 	trim_line  �� 0 write_to_file  �� 0 file_exists  �� 0 get_unique_destination  � ��8���������� 0 
app_exists  �� ����� �  ���� 0 appname APPNAME��  � ������ 0 appname APPNAME�� 0 appid appID� ��������
�� 
capp
�� 
ID  
�� kfrmID  
�� .coredoexbool       obj �� *�/�,E�O*��0j � ��K���� ���� 	0 which  �� ����   ���� 0 app_name  ��    	�������������������� 0 app_name  �� 0 the_app  �� 0 the_content  �� 0 n  �� 0 i  �� 0 test_str  �� 0 	this_line  �� 0 err_str  �� 0 
err_number   ���������rtvx�������������������������
�� 
cwin
�� .coredoexbool       obj 
�� .aevtrappnull��� ��� null
�� 
cmnd
�� .coredoscnull��� ��� ctxt
�� .sysodelanull��� ��� nmbr
�� 
pcnt
�� 
TEXT
�� 
cpar
�� .corecnte****       ****
�� .coreclosnull���     obj 
�� 
cha �� 
�� .ascrcmnt****      � ****�� 0 	trim_line  �� 0 err_str   ������
�� 
errn�� 0 
err_number  ��  �� ��E�O� K*�k/j  
*j Y hO*��%�%�%�%l 	O�j O*�k/�,�&E�O��-j E�O*�k/j UO Vk�kh  A��/[a \[Zk\Za 2�&E�O�j O�a   ��/�&E�O*��jm+ E�Y hW X  h[OY��O�� ����������� 0 	trim_line  �� ����   �������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  ��   ���������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  �� 0 x   ����������J
�� 
leng
�� 
cha 
�� 
TEXT��  ��  �� |��,E�Ojllv� 0 *h�� �[�\[Z�k\Zi2�&E�W 	X  �[OY��Y hOkllv� 1 +h�� �[�\[Zk\Z�k'2�&E�W 	X  �[OY��Y hO�� ��V�������� 0 write_to_file  �� ��	�� 	  �������� 0 	this_data  �� 0 target_file  �� 0 append_data  ��   ���������� 0 	this_data  �� 0 target_file  �� 0 append_data  �� 0 open_target_file   ����������~�}�|�{�z�y�x�w�v
�� 
ctxt
�� 
file
�� 
perm
�� .rdwropenshor       file
� 
set2
�~ .rdwrseofnull���     ****
�} 
refn
�| 
wrat
�{ rdwreof �z 
�y .rdwrwritnull���     ****
�x .rdwrclosnull���     ****�w  �v  �� Z <��&E�O*�/�el E�O�f  ��jl Y hO����� 
O�j OeW X   *�/j W X  hOf� �u��t�s
�r�u 0 file_exists  �t �q�q   �p�p 0 thefile theFile�s  
 �o�o 0 thefile theFile ��n�m
�n 
file
�m .coredoexbool       obj �r � *�/j  eY fU� �l��k�j�i�l 0 get_unique_destination  �k �h�h   �g�f�g 0 
foldername 
folderName�f 0 promptmessage promptMessage�j   �e�d�c�b�e 0 
foldername 
folderName�d 0 promptmessage promptMessage�c "0 thetargetfolder theTargetFolder�b "0 theparentfolder theParentFolder 
���a�`�_�^�]���\
�a 
prmp
�` .sysostflalis    ��� null
�_ 
posx
�^ 
TEXT
�] .coredoexbool       obj �\ 0 get_unique_destination  �i C�E�O� 8*�l �,E�O��%�&�,E�O h��%�&j *��%�%l+ 	E�[OY��UO�* � d / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / s e t u p . s h+ � H / U s e r s / s c o t t / D o w n l o a d s / i c o n j a r - t o - a i, � . / U s e r s / s c o t t / D o w n l o a d s /ascr  ��ޭ