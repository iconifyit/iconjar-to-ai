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
TEXT�V  ��   4 o    �P�P 0 scripttools ScriptTools��  ��       �O% &�O  % �N�M�N 0 node_app  
�M .aevtoappnull  �   � ****& �L �K�J'(�I
�L .aevtoappnull  �   � ****�K  �J  ' �H�G�H 0 errstr errStr�G 0 errornumber errorNumber( 3�F�E�D "�C�B�A .�@�? E G�> Q�=�< c�; g�:�9 p s�8 v�7�6�5 ��4 ��3�2 ��1�0�/ � � � ��.�-	�,�+)�*!#
�F 
rtyp
�E 
ctxt
�D .earsffdralis        afdr
�C 
psxp
�B 
TEXT�A 0 _here_ _HERE_
�@ .sysoloadscpt        file�? 0 scripttools ScriptTools�> 0 appname APPNAME�= 	0 which  �< 0 file_exists  
�; 
dtxt
�: 
disp
�9 
btns
�8 
dflt�7 
�6 .sysodlogaskr        TEXT
�5 
ttxt�4 0 
foldername 
folderName�3 "0 thetargetfolder theTargetFolder
�2 
prmp
�1 .sysostflalis    ��� null�0 "0 theparentfolder theParentFolder
�/ .coredoexbool       obj �. 0 get_unique_destination  �- 0 destination  
�, .sysoexecTEXT���     TEXT�+ 0 errstr errStr) �)�(�'
�) 
errn�( 0 errornumber errorNumber�'  �* �IE)��l �%�,�&E�O��%�&j E�O�%)��l �%�,�%E�O*�k+ Ec   O*b   k+  3a a a a la a a lva a a  a ,Ec   Y hO �a E` Oa E` O*a  a !l "�,E` #O_ #_ %�&�,E` O ?h_ #_ %�&j $*a  a %_ %a &%l "�,E` #O_ #_ %�&�,E` [OY��O_ O*a 'a (l+ )E` *Oa +_ *%�&j ,OPW *X - .�a /  a 0j Y a 1�%a 2%�%�&j Uascr  ��ޭ