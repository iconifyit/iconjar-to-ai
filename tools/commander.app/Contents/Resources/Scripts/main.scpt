FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 node_app    m        � 	 	 & / u s r / l o c a l / b i n / n o d e   
  
 l     ��������  ��  ��        i        I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    k     �       l     ��������  ��  ��        r         c         n         1   	 ��
�� 
psxp  l    	 ����  b     	    l     ����  I    ��   !
�� .earsffdralis        afdr    f      ! �� "��
�� 
rtyp " m    ��
�� 
ctxt��  ��  ��    m     # # � $ $  : :��  ��    m    ��
�� 
TEXT  o      ���� 0 _here_ _HERE_   % & % r     ' ( ' I   �� )��
�� .sysoloadscpt        file ) l    *���� * c     + , + b     - . - o    ���� 0 _here_ _HERE_ . m     / / � 0 0 * o a s / s c r i p t _ t o o l s . s c p t , m    ��
�� 
TEXT��  ��  ��   ( o      ���� 0 scripttools ScriptTools &  1 2 1 l   ��������  ��  ��   2  3�� 3 O    � 4 5 4 k     � 6 6  7 8 7 r     / 9 : 9 b     - ; < ; n     + = > = 1   ) +��
�� 
psxp > l    ) ?���� ? b     ) @ A @ l    ' B���� B I    '�� C D
�� .earsffdralis        afdr C  f     ! D �� E��
�� 
rtyp E m   " #��
�� 
ctxt��  ��  ��   A m   ' ( F F � G G  : :��  ��   < m   + , H H � I I  a p p n a m e . t x t : o      ���� 0 appname_path   8  J K J r   0 7 L M L l  0 5 N���� N I  0 5�� O��
�� .rdwrread****        **** O o   0 1���� 0 appname_path  ��  ��  ��   M o      ���� 0 appname APPNAME K  P Q P l  8 8��������  ��  ��   Q  R S R r   8 D T U T I   8 >�� V���� 	0 which   V  W�� W m   9 : X X � Y Y  n o d e��  ��   U o      ���� 0 node_app   S  Z [ Z l  E E��������  ��  ��   [  \ ] \ Z   E � ^ _���� ^ H   E P ` ` I   E O�� a���� 0 file_exists   a  b�� b o   F K���� 0 node_app  ��  ��   _ r   S � c d c n   S { e f e 1   w {��
�� 
ttxt f l  S w g���� g I  S w�� h i
�� .sysodlogaskr        TEXT h m   S V j j � k k � T h e   n o d e   a p p   c o u l d   n o t   b e   f o u n d .   P l e a s e   e n t e r   t h e   p a t h   t o   t h e   a p p   a n d   c l i c k   ` C o n t i n u e ` . i �� l m
�� 
dtxt l m   Y \ n n � o o   m �� p q
�� 
disp p m   _ `����  q �� r s
�� 
btns r J   c k t t  u v u m   c f w w � x x  C a n c e l v  y�� y m   f i z z � { {  C o n t i n u e��   s �� |��
�� 
dflt | m   n q } } � ~ ~  C o n t i n u e��  ��  ��   d o      ���� 0 node_app  ��  ��   ]   �  l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 8 2 Get the path to the current script so we can find    � � � � d   G e t   t h e   p a t h   t o   t h e   c u r r e n t   s c r i p t   s o   w e   c a n   f i n d �  � � � l  � ��� � ���   � - ' the exact locations of the app.js file    � � � � N   t h e   e x a c t   l o c a t i o n s   o f   t h e   a p p . j s   f i l e �  � � � r   � � � � � n   � � � � � 1   � ���
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
�� .ascrcmnt****      � **** � c   � � � � � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  E r r o r :   � o   � ����� 0 errornumber errorNumber � m   � � � � � � �    -   � o   � ����� 0 errstr errStr��  ��   � m   � ��
� 
TEXT��  ��   5 o    �~�~ 0 scripttools ScriptTools��     � � � l     �}�|�{�}  �|  �{   �  ��z � l      �y � ��y   ���
on which(app_name)	set the_app to app_name		tell application "Terminal"				if not (exists window 1) then			reopen		end if				do script with command "which " & app_name & " | /usr/bin/awk '{ print " & "\"RESULT:\"" & " $1}'"				delay 0.5				set the_content to (contents of window 1) as string		set n to (count of every paragraph of the_content)				close window 1	end tell		repeat with i from 1 to n		try			set test_str to (characters 1 thru 7 of paragraph i of the_content) as string			log test_str			if test_str is equal to "RESULT:" then				set this_line to paragraph i of the_content as string				set the_app to trim_line(this_line, test_str, 0)			end if		on error err_str number err_number			-- log err_str & "[" & err_number & "]"		end try	end repeat		return the_append whichon file_exists(theFile) -- (String) as Boolean	tell application "System Events"		if exists file theFile then			return true		else			return false		end if	end tellend file_existson trim_line(this_text, trim_chars, trim_indicator)	-- 0 = beginning, 1 = end, 2 = both	set x to the length of the trim_chars	-- TRIM BEGINNING	if the trim_indicator is in {0, 2} then		repeat while this_text begins with the trim_chars			try				set this_text to characters (x + 1) thru -1 of this_text as string			on error				-- the text contains nothing but the trim characters				return ""			end try		end repeat	end if	-- TRIM ENDING	if the trim_indicator is in {1, 2} then		repeat while this_text ends with the trim_chars			try				set this_text to characters 1 thru -(x + 1) of this_text as string			on error				-- the text contains nothing but the trim characters				return ""			end try		end repeat	end if	return this_textend trim_line
    � � � �� 
  o n   w h i c h ( a p p _ n a m e )  	 s e t   t h e _ a p p   t o   a p p _ n a m e  	  	 t e l l   a p p l i c a t i o n   " T e r m i n a l "  	 	  	 	 i f   n o t   ( e x i s t s   w i n d o w   1 )   t h e n  	 	 	 r e o p e n  	 	 e n d   i f  	 	  	 	 d o   s c r i p t   w i t h   c o m m a n d   " w h i c h   "   &   a p p _ n a m e   &   "   |   / u s r / b i n / a w k   ' {   p r i n t   "   &   " \ " R E S U L T : \ " "   &   "   $ 1 } ' "  	 	  	 	 d e l a y   0 . 5  	 	  	 	 s e t   t h e _ c o n t e n t   t o   ( c o n t e n t s   o f   w i n d o w   1 )   a s   s t r i n g  	 	 s e t   n   t o   ( c o u n t   o f   e v e r y   p a r a g r a p h   o f   t h e _ c o n t e n t )  	 	  	 	 c l o s e   w i n d o w   1  	 e n d   t e l l  	  	 r e p e a t   w i t h   i   f r o m   1   t o   n  	 	 t r y  	 	 	 s e t   t e s t _ s t r   t o   ( c h a r a c t e r s   1   t h r u   7   o f   p a r a g r a p h   i   o f   t h e _ c o n t e n t )   a s   s t r i n g  	 	 	 l o g   t e s t _ s t r  	 	 	 i f   t e s t _ s t r   i s   e q u a l   t o   " R E S U L T : "   t h e n  	 	 	 	 s e t   t h i s _ l i n e   t o   p a r a g r a p h   i   o f   t h e _ c o n t e n t   a s   s t r i n g  	 	 	 	 s e t   t h e _ a p p   t o   t r i m _ l i n e ( t h i s _ l i n e ,   t e s t _ s t r ,   0 )  	 	 	 e n d   i f  	 	 o n   e r r o r   e r r _ s t r   n u m b e r   e r r _ n u m b e r  	 	 	 - -   l o g   e r r _ s t r   &   " [ "   &   e r r _ n u m b e r   &   " ] "  	 	 e n d   t r y  	 e n d   r e p e a t  	  	 r e t u r n   t h e _ a p p  e n d   w h i c h   o n   f i l e _ e x i s t s ( t h e F i l e )   - -   ( S t r i n g )   a s   B o o l e a n  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 i f   e x i s t s   f i l e   t h e F i l e   t h e n  	 	 	 r e t u r n   t r u e  	 	 e l s e  	 	 	 r e t u r n   f a l s e  	 	 e n d   i f  	 e n d   t e l l  e n d   f i l e _ e x i s t s   o n   t r i m _ l i n e ( t h i s _ t e x t ,   t r i m _ c h a r s ,   t r i m _ i n d i c a t o r )  	 - -   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h  	 s e t   x   t o   t h e   l e n g t h   o f   t h e   t r i m _ c h a r s  	 - -   T R I M   B E G I N N I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 0 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   t h i s _ t e x t   b e g i n s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   t h i s _ t e x t   t o   c h a r a c t e r s   ( x   +   1 )   t h r u   - 1   o f   t h i s _ t e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 - -   T R I M   E N D I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 1 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   t h i s _ t e x t   e n d s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   t h i s _ t e x t   t o   c h a r a c t e r s   1   t h r u   - ( x   +   1 )   o f   t h i s _ t e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 r e t u r n   t h i s _ t e x t  e n d   t r i m _ l i n e 
�z       
�x � � � � � � � � ��x   � �w�v�u�t�s�r�q�p�w 0 node_app  
�v .aevtoappnull  �   � ****�u 0 _here_ _HERE_�t 0 scripttools ScriptTools�s 0 appname_path  �r 0 appname APPNAME�q 0 my_path  �p 0 user   � � � � & / u s r / l o c a l / b i n / n o d e � �o �n�m � ��l
�o .aevtoappnull  �   � ****�n  �m   � �k�j�k 0 errstr errStr�j 0 errornumber errorNumber � +�i�h�g #�f�e�d /�c�b F H�a�`�_ X�^�] j�\ n�[�Z w z�Y }�X�W�V ��U ��T�S ��R ��Q � � ��P
�i 
rtyp
�h 
ctxt
�g .earsffdralis        afdr
�f 
psxp
�e 
TEXT�d 0 _here_ _HERE_
�c .sysoloadscpt        file�b 0 scripttools ScriptTools�a 0 appname_path  
�` .rdwrread****        ****�_ 0 appname APPNAME�^ 	0 which  �] 0 file_exists  
�\ 
dtxt
�[ 
disp
�Z 
btns
�Y 
dflt�X 
�W .sysodlogaskr        TEXT
�V 
ttxt�U 0 my_path  
�T .sysoexecTEXT���     TEXT�S 0 user  �R 0 errstr errStr � �O�N�M
�O 
errn�N 0 errornumber errorNumber�M  �Q 
�P .ascrcmnt****      � ****�l �)��l �%�,�&E�O��%�&j E�O� �)��l �%�,�%E�O�j E�O*�k+ Ec   O*b   k+  3a a a a la a a lva a a  a ,Ec   Y hO)��l a %�,E` Oa  j !E` "O b   a #%�%�&j !W *X $ %�a &  a 'j Y a (�%a )%�%�&j *U � � � � ` / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / � �L �  ��L   � k       � �  � � � i      � � � I      �K ��J�K 0 
app_exists   �  ��I � o      �H�H 0 appname APPNAME�I  �J   � k      � �  � � � r      � � � n      � � � 1    �G
�G 
ID   � 4     �F �
�F 
capp � o    �E�E 0 appname APPNAME � o      �D�D 0 appid appID �  ��C � I  	 �B ��A
�B .coredoexbool       obj  � 5   	 �@ ��?
�@ 
capp � o    �>�> 0 appid appID
�? kfrmID  �A  �C   �  � � � l     �=�<�;�=  �<  �;   �  � � � i     � � � I      �: �9�: 	0 which    �8 o      �7�7 0 app_name  �8  �9   � k     �  r      o     �6�6 0 app_name   o      �5�5 0 the_app    l   �4�3�2�4  �3  �2   	
	 O    R k    Q  l   �1�0�/�1  �0  �/    Z    �.�- H     l   �,�+ I   �*�)
�* .coredoexbool       obj  4    �(
�( 
cwin m   
 �'�' �)  �,  �+   I   �&�%�$
�& .aevtrappnull��� ��� null�%  �$  �.  �-    l   �#�"�!�#  �"  �!    I   -� �
�  .coredoscnull��� ��� ctxt�   ��
� 
cmnd b     ) b     ' !  b     %"#" b     #$%$ m     !&& �''  w h i c h  % o   ! "�� 0 app_name  # m   # $(( �)) 2   |   / u s r / b i n / a w k   ' {   p r i n t  ! m   % &** �++  " R E S U L T : " m   ' (,, �-- 
   $ 1 } '�   ./. l  . .����  �  �  / 010 I  . 3�2�
� .sysodelanull��� ��� nmbr2 m   . /33 ?�      �  1 454 l  4 4����  �  �  5 676 r   4 >898 c   4 <:;: l  4 :<��< n   4 :=>= 1   8 :�
� 
pcnt> 4   4 8�?
� 
cwin? m   6 7�� �  �  ; m   : ;�
� 
TEXT9 o      �� 0 the_content  7 @A@ r   ? HBCB l  ? FD��D I  ? F�
E�	
�
 .corecnte****       ****E n   ? BFGF 2   @ B�
� 
cparG o   ? @�� 0 the_content  �	  �  �  C o      �� 0 n  A HIH l  I I����  �  �  I J�J I  I Q�K� 
� .coreclosnull���     obj K 4   I M��L
�� 
cwinL m   K L���� �   �   m    MM�                                                                                      @ alis    <  Macintosh HD                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  
 NON l  S S��������  ��  ��  O PQP Y   S �R��ST��R Q   ] �UVWU k   ` �XX YZY r   ` v[\[ c   ` t]^] l  ` r_����_ n   ` r`a` 7  d r��bc
�� 
cha b m   j l���� c m   m q���� a n   ` dded 4   a d��f
�� 
cparf o   b c���� 0 i  e o   ` a���� 0 the_content  ��  ��  ^ m   r s��
�� 
TEXT\ o      ���� 0 test_str  Z ghg I  w |��i��
�� .ascrcmnt****      � ****i o   w x���� 0 test_str  ��  h j��j Z   } �kl����k =  } �mnm o   } ~���� 0 test_str  n m   ~ �oo �pp  R E S U L T :l k   � �qq rsr r   � �tut c   � �vwv n   � �xyx 4   � ���z
�� 
cparz o   � ����� 0 i  y o   � ����� 0 the_content  w m   � ���
�� 
TEXTu o      ���� 0 	this_line  s {��{ r   � �|}| I   � ���~���� 0 	trim_line  ~ � o   � ����� 0 	this_line  � ��� o   � ����� 0 test_str  � ���� m   � �����  ��  ��  } o      ���� 0 the_app  ��  ��  ��  ��  V R      ����
�� .ascrerr ****      � ****� o      ���� 0 err_str  � �����
�� 
errn� o      ���� 0 
err_number  ��  W l  � �������  � + % log err_str & "[" & err_number & "]"   � ��� J   l o g   e r r _ s t r   &   " [ "   &   e r r _ n u m b e r   &   " ] "�� 0 i  S m   V W���� T o   W X���� 0 n  ��  Q ��� l  � ���������  ��  ��  � ���� L   � ��� o   � ����� 0 the_app  ��   � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	trim_line  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 
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
�� .ascrerr ****      � ****��  ��  � k   m o�� ��� l  m m������  � 8 2 the text contains nothing but the trim characters   � ��� d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s� ���� L   m o�� m   m n�� ���  ��  � D   L O   o   L M���� 0 	this_text   l  M N���� o   M N���� 0 
trim_chars  ��  ��  ��  ��  � �� L   y { o   y z���� 0 	this_text  ��  �  l     ��������  ��  ��    i    	
	 I      ������ 0 write_to_file    o      �� 0 	this_data    o      �~�~ 0 target_file   �} o      �|�| 0 append_data  �}  ��  
 l    Y Q     Y k    :  r     c     l   �{�z o    �y�y 0 target_file  �{  �z   m    �x
�x 
ctxt l     �w�v o      �u�u 0 target_file  �w  �v    !  r   	 "#" l 	 	 $�t�s$ I  	 �r%&
�r .rdwropenshor       file% 4   	 �q'
�q 
file' o    �p�p 0 target_file  & �o(�n
�o 
perm( m    �m
�m boovtrue�n  �t  �s  # l     )�l�k) o      �j�j 0 open_target_file  �l  �k  ! *+* Z   ',-�i�h, =   ./. o    �g�g 0 append_data  / m    �f
�f boovfals- l 	  #0�e�d0 I   #�c12
�c .rdwrseofnull���     ****1 l   3�b�a3 o    �`�` 0 open_target_file  �b  �a  2 �_4�^
�_ 
set24 m    �]�]  �^  �e  �d  �i  �h  + 565 I  ( 1�\78
�\ .rdwrwritnull���     ****7 o   ( )�[�[ 0 	this_data  8 �Z9:
�Z 
refn9 l  * +;�Y�X; o   * +�W�W 0 open_target_file  �Y  �X  : �V<�U
�V 
wrat< m   , -�T
�T rdwreof �U  6 =>= I  2 7�S?�R
�S .rdwrclosnull���     ****? l  2 3@�Q�P@ o   2 3�O�O 0 open_target_file  �Q  �P  �R  > A�NA L   8 :BB m   8 9�M
�M boovtrue�N   R      �L�K�J
�L .ascrerr ****      � ****�K  �J   k   B YCC DED Q   B VFG�IF I  E M�HH�G
�H .rdwrclosnull���     ****H 4   E I�FI
�F 
fileI o   G H�E�E 0 target_file  �G  G R      �D�C�B
�D .ascrerr ****      � ****�C  �B  �I  E J�AJ L   W YKK m   W X�@
�@ boovfals�A   - ' (string, file path as string, boolean)    �LL N   ( s t r i n g ,   f i l e   p a t h   a s   s t r i n g ,   b o o l e a n ) MNM l     �?�>�=�?  �>  �=  N O�<O i    PQP I      �;R�:�; 0 file_exists  R S�9S o      �8�8 0 thefile theFile�9  �:  Q l    TUVT O     WXW Z    YZ�7[Y I   �6\�5
�6 .coredoexbool       obj \ 4    �4]
�4 
file] o    �3�3 0 thefile theFile�5  Z L    ^^ m    �2
�2 boovtrue�7  [ L    __ m    �1
�1 boovfalsX m     ``�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  U   (String) as Boolean   V �aa (   ( S t r i n g )   a s   B o o l e a n�<   � �0bcdefg�0  b �/�.�-�,�+�/ 0 
app_exists  �. 	0 which  �- 0 	trim_line  �, 0 write_to_file  �+ 0 file_exists  c �* ��)�(hi�'�* 0 
app_exists  �) �&j�& j  �%�% 0 appname APPNAME�(  h �$�#�$ 0 appname APPNAME�# 0 appid appIDi �"�!� �
�" 
capp
�! 
ID  
�  kfrmID  
� .coredoexbool       obj �' *�/�,E�O*��0j d � ���kl�� 	0 which  � �m� m  �� 0 app_name  �  k 	���������� 0 app_name  � 0 the_app  � 0 the_content  � 0 n  � 0 i  � 0 test_str  � 0 	this_line  � 0 err_str  � 0 
err_number  l M����&(*,�3�
�	�������o�� n
� 
cwin
� .coredoexbool       obj 
� .aevtrappnull��� ��� null
� 
cmnd
� .coredoscnull��� ��� ctxt
�
 .sysodelanull��� ��� nmbr
�	 
pcnt
� 
TEXT
� 
cpar
� .corecnte****       ****
� .coreclosnull���     obj 
� 
cha � 
� .ascrcmnt****      � ****� 0 	trim_line  �  0 err_str  n ������
�� 
errn�� 0 
err_number  ��  � ��E�O� K*�k/j  
*j Y hO*��%�%�%�%l 	O�j O*�k/�,�&E�O��-j E�O*�k/j UO Vk�kh  A��/[a \[Zk\Za 2�&E�O�j O�a   ��/�&E�O*��jm+ E�Y hW X  h[OY��O�e �������op���� 0 	trim_line  �� ��q�� q  �������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  ��  o ���������� 0 	this_text  �� 0 
trim_chars  �� 0 trim_indicator  �� 0 x  p ������������
�� 
leng
�� 
cha 
�� 
TEXT��  ��  �� |��,E�Ojllv� 0 *h�� �[�\[Z�k\Zi2�&E�W 	X  �[OY��Y hOkllv� 1 +h�� �[�\[Zk\Z�k'2�&E�W 	X  �[OY��Y hO�f ��
����rs���� 0 write_to_file  �� ��t�� t  �������� 0 	this_data  �� 0 target_file  �� 0 append_data  ��  r ���������� 0 	this_data  �� 0 target_file  �� 0 append_data  �� 0 open_target_file  s ����������������������������
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
O�j OeW X   *�/j W X  hOfg ��Q����uv���� 0 file_exists  �� ��w�� w  ���� 0 thefile theFile��  u ���� 0 thefile theFilev `����
�� 
file
�� .coredoexbool       obj �� � *�/j  eY fU � �xx v / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / a p p n a m e . t x t � �yy V ~ / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / a p p . j s � �zz ` / U s e r s / s c o t t / g i t h u b / i c o n i f y / i c o n j a r - t o - a i / t o o l s / � �{{ 
 s c o t t ascr  ��ޭ