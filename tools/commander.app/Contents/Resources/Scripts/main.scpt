FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 node_app    m        � 	 	 & / u s r / l o c a l / b i n / n o d e   
  
 l     ��������  ��  ��     ��  i        I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    k     �       l     ��������  ��  ��        r         c         n         1   	 ��
�� 
psxp  l    	 ����  b     	    l     ����  I    ��   
�� .earsffdralis        afdr   f        �� !��
�� 
rtyp ! m    ��
�� 
ctxt��  ��  ��    m     " " � # #  : :��  ��    m    ��
�� 
TEXT  o      ���� 0 _here_ _HERE_   $ % $ r     & ' & I   �� (��
�� .sysoloadscpt        file ( l    )���� ) c     * + * b     , - , o    ���� 0 _here_ _HERE_ - m     . . � / / * o a s / s c r i p t _ t o o l s . s c p t + m    ��
�� 
TEXT��  ��  ��   ' o      ���� 0 scripttools ScriptTools %  0 1 0 l   ��������  ��  ��   1  2�� 2 O    � 3 4 3 k     � 5 5  6 7 6 r     / 8 9 8 b     - : ; : n     + < = < 1   ) +��
�� 
psxp = l    ) >���� > b     ) ? @ ? l    ' A���� A I    '�� B C
�� .earsffdralis        afdr B  f     ! C �� D��
�� 
rtyp D m   " #��
�� 
ctxt��  ��  ��   @ m   ' ( E E � F F  : :��  ��   ; m   + , G G � H H  a p p n a m e . t x t 9 o      ���� 0 appname_path   7  I J I r   0 7 K L K l  0 5 M���� M I  0 5�� N��
�� .rdwrread****        **** N o   0 1���� 0 appname_path  ��  ��  ��   L o      ���� 0 appname APPNAME J  O P O l  8 8��������  ��  ��   P  Q R Q r   8 D S T S I   8 >�� U���� 	0 which   U  V�� V m   9 : W W � X X  n o d e��  ��   T o      ���� 0 node_app   R  Y Z Y l  E E��������  ��  ��   Z  [ \ [ Z   E � ] ^���� ] H   E P _ _ I   E O�� `���� 0 file_exists   `  a�� a o   F K���� 0 node_app  ��  ��   ^ r   S � b c b n   S { d e d 1   w {��
�� 
ttxt e l  S w f���� f I  S w�� g h
�� .sysodlogaskr        TEXT g m   S V i i � j j � T h e   n o d e   a p p   c o u l d   n o t   b e   f o u n d .   P l e a s e   e n t e r   t h e   p a t h   t o   t h e   a p p   a n d   c l i c k   ` C o n t i n u e ` . h �� k l
�� 
dtxt k m   Y \ m m � n n   l �� o p
�� 
disp o m   _ `����  p �� q r
�� 
btns q J   c k s s  t u t m   c f v v � w w  C a n c e l u  x�� x m   f i y y � z z  C o n t i n u e��   r �� {��
�� 
dflt { m   n q | | � } }  C o n t i n u e��  ��  ��   c o      ���� 0 node_app  ��  ��   \  ~  ~ l  � ���������  ��  ��     � � � l  � ��� � ���   � 8 2 Get the path to the current script so we can find    � � � � d   G e t   t h e   p a t h   t o   t h e   c u r r e n t   s c r i p t   s o   w e   c a n   f i n d �  � � � l  � ��� � ���   � - ' the exact locations of the app.js file    � � � � N   t h e   e x a c t   l o c a t i o n s   o f   t h e   a p p . j s   f i l e �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � b   � � � � � l  � � ����� � I  � ��� � �
�� .earsffdralis        afdr �  f   � � � �� ���
�� 
rtyp � m   � ���
�� 
ctxt��  ��  ��   � m   � � � � � � �  : :��  ��   � o      ���� 0 my_path   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � j / b i n / l s   - l   / d e v / c o n s o l e   |   / u s r / b i n / a w k   ' {   p r i n t   $ 3   } '��   � o      ���� 0 user   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Run the node main script    � � � � 2   R u n   t h e   n o d e   m a i n   s c r i p t �  ��� � Q   � � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � l  � � ����� � c   � � � � � l  � � ����� � b   � � � � � b   � � � � � o   � ����� 0 node_app   � m   � � � � � � �    � o   � ����� 0 appname APPNAME��  ��   � m   � ���
�� 
TEXT��  ��  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errstr errStr � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z   � � � ��� � � =  � � � � � o   � ����� 0 errornumber errorNumber � m   � �����  � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � �2 T h e   n o d e   c o m m a n d   l i n e   a p p   c o u l d   n o t   b e   f o u n d   b u t   i s   r e q u i r e d   t o   r u n   t h i s   s c r i p t .   P l e a s e   m a k e   s u r e   n o d e   i s   i n s t a l l e d   i n   / u s r / l o c a l / b i n / n o d e   a n d   t r y   a g a i n .��  ��   � I  � ��� ���
�� .ascrcmnt****      � **** � c   � � � � � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  E r r o r :   � o   � ����� 0 errornumber errorNumber � m   � � � � � � �    -   � o   � ��� 0 errstr errStr��  ��   � m   � ��~
�~ 
TEXT��  ��   4 o    �}�} 0 scripttools ScriptTools��  ��       
�| � � � � � � � � ��|   � �{�z�y�x�w�v�u�t�{ 0 node_app  
�z .aevtoappnull  �   � ****�y 0 _here_ _HERE_�x 0 scripttools ScriptTools�w 0 appname_path  �v 0 appname APPNAME�u 0 my_path  �t 0 user   � � � � & / u s r / l o c a l / b i n / n o d e � �s �r�q � ��p
�s .aevtoappnull  �   � ****�r  �q   � �o�n�o 0 errstr errStr�n 0 errornumber errorNumber � +�m�l�k "�j�i�h .�g�f E G�e�d�c W�b�a i�` m�_�^ v y�] |�\�[�Z ��Y ��X�W ��V ��U � � ��T
�m 
rtyp
�l 
ctxt
�k .earsffdralis        afdr
�j 
psxp
�i 
TEXT�h 0 _here_ _HERE_
�g .sysoloadscpt        file�f 0 scripttools ScriptTools�e 0 appname_path  
�d .rdwrread****        ****�c 0 appname APPNAME�b 	0 which  �a 0 file_exists  
�` 
dtxt
�_ 
disp
�^ 
btns
�] 
dflt�\ 
�[ .sysodlogaskr        TEXT
�Z 
ttxt�Y 0 my_path  
�X .sysoexecTEXT���     TEXT�W 0 user  �V 0 errstr errStr � �S�R�Q
�S 
errn�R 0 errornumber errorNumber�Q  �U 
�T .ascrcmnt****      � ****�p �)��l �%�,�&E�O��%�&j E�O� �)��l �%�,�%E�O�j E�O*�k+ Ec   O*b   k+  3a a a a la a a lva a a  a ,Ec   Y hO)��l a %�,E` Oa  j !E` "O b   a #%�%�&j !W *X $ %�a &  a 'j Y a (�%a )%�%�&j *U � � � � ` / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / � �P �  ��P   � k       � �  � � � i      � � � I      �O ��N�O 0 
app_exists   �  ��M � o      �L�L 0 appname APPNAME�M  �N   � k      � �  � � � r      � � � n      � � � 1    �K
�K 
ID   � 4     �J �
�J 
capp � o    �I�I 0 appname APPNAME � o      �H�H 0 appid appID �  ��G � I  	 �F ��E
�F .coredoexbool       obj  � 5   	 �D ��C
�D 
capp � o    �B�B 0 appid appID
�C kfrmID  �E  �G   �  � � � l     �A�@�?�A  �@  �?   �  � � � i     � � � I      �> ��=�> 	0 which   �  ��< � o      �;�; 0 app_name  �<  �=   � k     � � �  � � � r      � � � o     �:�: 0 app_name   � o      �9�9 0 the_app   �    l   �8�7�6�8  �7  �6    O    R k    Q  l   �5�4�3�5  �4  �3   	
	 Z    �2�1 H     l   �0�/ I   �.�-
�. .coredoexbool       obj  4    �,
�, 
cwin m   
 �+�+ �-  �0  �/   I   �*�)�(
�* .aevtrappnull��� ��� null�)  �(  �2  �1  
  l   �'�&�%�'  �&  �%    I   -�$�#
�$ .coredoscnull��� ��� ctxt�#   �"�!
�" 
cmnd b     ) b     ' b     % b     # m     ! �    w h i c h   o   ! "� �  0 app_name   m   # $!! �"" 2   |   / u s r / b i n / a w k   ' {   p r i n t   m   % &## �$$  " R E S U L T : " m   ' (%% �&& 
   $ 1 } '�!   '(' l  . .����  �  �  ( )*) I  . 3�+�
� .sysodelanull��� ��� nmbr+ m   . /,, ?�      �  * -.- l  4 4����  �  �  . /0/ r   4 >121 c   4 <343 l  4 :5��5 n   4 :676 1   8 :�
� 
pcnt7 4   4 8�8
� 
cwin8 m   6 7�� �  �  4 m   : ;�
� 
TEXT2 o      �� 0 the_content  0 9:9 r   ? H;<; l  ? F=��= I  ? F�>�
� .corecnte****       ****> n   ? B?@? 2   @ B�
� 
cpar@ o   ? @�� 0 the_content  �  �  �  < o      �
�
 0 n  : ABA l  I I�	���	  �  �  B C�C I  I Q�D�
� .coreclosnull���     obj D 4   I M�E
� 
cwinE m   K L�� �  �   m    FF�                                                                                      @ alis    <  Macintosh HD                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��   GHG l  S S�� ���  �   ��  H IJI Y   S �K��LM��K Q   ] �NOPN k   ` �QQ RSR r   ` vTUT c   ` tVWV l  ` rX����X n   ` rYZY 7  d r��[\
�� 
cha [ m   j l���� \ m   m q���� Z n   ` d]^] 4   a d��_
�� 
cpar_ o   b c���� 0 i  ^ o   ` a���� 0 the_content  ��  ��  W m   r s��
�� 
TEXTU o      ���� 0 test_str  S `a` I  w |��b��
�� .ascrcmnt****      � ****b o   w x���� 0 test_str  ��  a c��c Z   } �de����d =  } �fgf o   } ~���� 0 test_str  g m   ~ �hh �ii  R E S U L T :e k   � �jj klk r   � �mnm c   � �opo n   � �qrq 4   � ���s
�� 
cpars o   � ����� 0 i  r o   � ����� 0 the_content  p m   � ���
�� 
TEXTn o      ���� 0 	this_line  l t��t r   � �uvu I   � ���w���� 0 	trim_line  w xyx o   � ����� 0 	this_line  y z{z o   � ����� 0 test_str  { |��| m   � �����  ��  ��  v o      ���� 0 the_app  ��  ��  ��  ��  O R      ��}~
�� .ascrerr ****      � ****} o      ���� 0 err_str  ~ ����
�� 
errn o      ���� 0 
err_number  ��  P l  � �������  � + % log err_str & "[" & err_number & "]"   � ��� J   l o g   e r r _ s t r   &   " [ "   &   e r r _ n u m b e r   &   " ] "�� 0 i  L m   V W���� M o   W X���� 0 n  ��  J ���� L   � ��� o   � ����� 0 the_app  ��   � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	trim_line  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 
trim_chars  � ���� o      ���� 0 trim_indicator  ��  ��  � k     {�� ��� l     ������  � ' ! 0 = beginning, 1 = end, 2 = both   � ��� B   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h� ��� r     ��� l    ������ n     ��� 1    ��
�� 
leng� l    ������ o     ���� 0 
trim_chars  ��  ��  ��  ��  � o      ���� 0 x  � ��� l   ������  �   TRIM BEGINNING   � ���    T R I M   B E G I N N I N G� ��� Z    >������� E   ��� J    
�� ��� m    ����  � ���� m    ���� ��  � l  
 ������ o   
 ���� 0 trim_indicator  ��  ��  � V    :��� Q    5���� r    +��� c    )��� n    '��� 7   '����
�� 
cha � l   #������ [    #��� o     !���� 0 x  � m   ! "���� ��  ��  � m   $ &������� o    ���� 0 	this_text  � m   ' (��
�� 
TEXT� o      ���� 0 	this_text  � R      ������
�� .ascrerr ****      � ****��  ��  � k   3 5�� ��� l  3 3������  � 8 2 the text contains nothing but the trim characters   � ��� d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s� ���� L   3 5�� m   3 4�� ���  ��  � C   ��� o    ���� 0 	this_text  � l   ������ o    ���� 0 
trim_chars  ��  ��  ��  ��  � ��� l  ? ?������  �   TRIM ENDING   � ���    T R I M   E N D I N G� ��� Z   ? x������� E  ? E��� J   ? C�� ��� m   ? @���� � ���� m   @ A���� ��  � l  C D������ o   C D���� 0 trim_indicator  ��  ��  � V   H t��� Q   P o���� r   S e��� c   S c��� n   S a��� 7  T a����
�� 
cha � m   X Z���� � d   [ `�� l  \ _������ [   \ _��� o   \ ]���� 0 x  � m   ] ^���� ��  ��  � o   S T���� 0 	this_text  � m   a b��
�� 
TEXT� o      ���� 0 	this_text  � R      ������
�� .ascrerr ****      � ****��  ��  � k   m o�� ��� l  m m������  � 8 2 the text contains nothing but the trim characters   � ��� d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s� ���� L   m o�� m   m n�� ���  ��  � D   L O��� o   L M���� 0 	this_text  � l  M N������ o   M N���� 0 
trim_chars  ��  ��  ��  ��  � ���� L   y {�� o   y z���� 0 	this_text  ��  � ��� l     ��������  ��  ��  � ��� i       I      ������ 0 write_to_file    o      ���� 0 	this_data    o      ���� 0 target_file   �� o      ���� 0 append_data  ��  ��   l    Y	
 Q     Y k    :  r     c     l   ���� o    ���� 0 target_file  ��  ��   m    �
� 
ctxt l     �~�} o      �|�| 0 target_file  �~  �}    r   	  l 	 	 �{�z I  	 �y
�y .rdwropenshor       file 4   	 �x
�x 
file o    �w�w 0 target_file   �v�u
�v 
perm m    �t
�t boovtrue�u  �{  �z   l      �s�r  o      �q�q 0 open_target_file  �s  �r   !"! Z   '#$�p�o# =   %&% o    �n�n 0 append_data  & m    �m
�m boovfals$ l 	  #'�l�k' I   #�j()
�j .rdwrseofnull���     ****( l   *�i�h* o    �g�g 0 open_target_file  �i  �h  ) �f+�e
�f 
set2+ m    �d�d  �e  �l  �k  �p  �o  " ,-, I  ( 1�c./
�c .rdwrwritnull���     ****. o   ( )�b�b 0 	this_data  / �a01
�a 
refn0 l  * +2�`�_2 o   * +�^�^ 0 open_target_file  �`  �_  1 �]3�\
�] 
wrat3 m   , -�[
�[ rdwreof �\  - 454 I  2 7�Z6�Y
�Z .rdwrclosnull���     ****6 l  2 37�X�W7 o   2 3�V�V 0 open_target_file  �X  �W  �Y  5 8�U8 L   8 :99 m   8 9�T
�T boovtrue�U   R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q   k   B Y:: ;<; Q   B V=>�P= I  E M�O?�N
�O .rdwrclosnull���     ****? 4   E I�M@
�M 
file@ o   G H�L�L 0 target_file  �N  > R      �K�J�I
�K .ascrerr ****      � ****�J  �I  �P  < A�HA L   W YBB m   W X�G
�G boovfals�H  	 - ' (string, file path as string, boolean)   
 �CC N   ( s t r i n g ,   f i l e   p a t h   a s   s t r i n g ,   b o o l e a n )� DED l     �F�E�D�F  �E  �D  E FGF i    HIH I      �CJ�B�C 0 file_exists  J K�AK o      �@�@ 0 thefile theFile�A  �B  I l    LMNL O     OPO Z    QR�?SQ I   �>T�=
�> .coredoexbool       obj T 4    �<U
�< 
fileU o    �;�; 0 thefile theFile�=  R L    VV m    �:
�: boovtrue�?  S L    WW m    �9
�9 boovfalsP m     XX�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  M   (String) as Boolean   N �YY (   ( S t r i n g )   a s   B o o l e a nG Z�8Z l     �7�6�5�7  �6  �5  �8   � �4[\]^_`�4  [ �3�2�1�0�/�3 0 
app_exists  �2 	0 which  �1 0 	trim_line  �0 0 write_to_file  �/ 0 file_exists  \ �. ��-�,ab�+�. 0 
app_exists  �- �*c�* c  �)�) 0 appname APPNAME�,  a �(�'�( 0 appname APPNAME�' 0 appid appIDb �&�%�$�#
�& 
capp
�% 
ID  
�$ kfrmID  
�# .coredoexbool       obj �+ *�/�,E�O*��0j ] �" ��!� de��" 	0 which  �! �f� f  �� 0 app_name  �   d 	���������� 0 app_name  � 0 the_app  � 0 the_content  � 0 n  � 0 i  � 0 test_str  � 0 	this_line  � 0 err_str  � 0 
err_number  e F����!#%�,�����
�	���h��g
� 
cwin
� .coredoexbool       obj 
� .aevtrappnull��� ��� null
� 
cmnd
� .coredoscnull��� ��� ctxt
� .sysodelanull��� ��� nmbr
� 
pcnt
� 
TEXT
� 
cpar
�
 .corecnte****       ****
�	 .coreclosnull���     obj 
� 
cha � 
� .ascrcmnt****      � ****� 0 	trim_line  � 0 err_str  g ���
� 
errn� 0 
err_number  �  � ��E�O� K*�k/j  
*j Y hO*��%�%�%�%l 	O�j O*�k/�,�&E�O��-j E�O*�k/j UO Vk�kh  A��/[a \[Zk\Za 2�&E�O�j O�a   ��/�&E�O*��jm+ E�Y hW X  h[OY��O�^ � �����hi���  0 	trim_line  �� ��j�� j  �������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  ��  h ���������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  �� 0 x  i ������������
�� 
leng
�� 
cha 
�� 
TEXT��  ��  �� |��,E�Ojllv� 0 *h�� �[�\[Z�k\Zi2�&E�W 	X  �[OY��Y hOkllv� 1 +h�� �[�\[Zk\Z�k'2�&E�W 	X  �[OY��Y hO�_ ������kl���� 0 write_to_file  �� ��m�� m  �������� 0 	this_data  �� 0 target_file  �� 0 append_data  ��  k ���������� 0 	this_data  �� 0 target_file  �� 0 append_data  �� 0 open_target_file  l ����������������������������
�� 
ctxt
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  �� Z <��&E�O*�/�el E�O�f  ��jl Y hO����� 
O�j OeW X   *�/j W X  hOf` ��I����no���� 0 file_exists  �� ��p�� p  ���� 0 thefile theFile��  n ���� 0 thefile theFileo X����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY fU � �qq v / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / a p p n a m e . t x t � �rr V ~ / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / a p p . j s � �ss ` / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / � �tt 
 s c o t t ascr  ��ޭ