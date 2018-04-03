FasdUAS 1.101.10   ��   ��    k             l     ��  ��    "  Some common shell operators     � 	 	 8   S o m e   c o m m o n   s h e l l   o p e r a t o r s   
  
 l     ��������  ��  ��        j     �� �� 0 pipe    m        �      |        j    �� �� 
0 io_out    m       �      >        j    �� �� 	0 io_in    m       �      <        l     ��������  ��  ��        i   	      I     ������
�� .aevtoappnull  �   � ****��  ��     Q     � ! " # ! k    � $ $  % & % r     ' ( ' c     ) * ) n     + , + 1   
 ��
�� 
psxp , l   
 -���� - I   
�� . /
�� .earsffdralis        afdr .  f     / �� 0��
�� 
rtyp 0 m    ��
�� 
ctxt��  ��  ��   * m    ��
�� 
TEXT ( o      ���� 0 _app_ _APP_ &  1 2 1 r      3 4 3 c     5 6 5 n     7 8 7 1    ��
�� 
psxp 8 l    9���� 9 b     : ; : l    <���� < I   �� = >
�� .earsffdralis        afdr =  f     > �� ?��
�� 
rtyp ? m    ��
�� 
ctxt��  ��  ��   ; m     @ @ � A A  : :��  ��   6 m    ��
�� 
TEXT 4 o      ���� 0 _here_ _HERE_ 2  B C B l  ! !��������  ��  ��   C  D E D l  ! !�� F G��   F   Folder paths --    G � H H     F o l d e r   p a t h s   - - E  I J I r   ! * K L K n   ! ( M N M 1   & (��
�� 
psxp N l  ! & O���� O c   ! & P Q P b   ! $ R S R o   ! "���� 0 _app_ _APP_ S l  " # T���� T m   " # U U � V V  C o n t e n t s / b i n /��  ��   Q m   $ %��
�� 
TEXT��  ��   L o      ���� 0 _bin_ _BIN_ J  W X W r   + 4 Y Z Y n   + 2 [ \ [ 1   0 2��
�� 
psxp \ l  + 0 ]���� ] c   + 0 ^ _ ^ l  + . `���� ` b   + . a b a o   + ,���� 0 _app_ _APP_ b m   , - c c � d d  C o n t e n t s / l i b /��  ��   _ m   . /��
�� 
TEXT��  ��   Z o      ���� 0 _lib_ _LIB_ X  e f e r   5 > g h g c   5 < i j i n   5 : k l k 1   8 :��
�� 
psxp l l  5 8 m���� m b   5 8 n o n o   5 6���� 0 _here_ _HERE_ o m   6 7 p p � q q  i n p u t /��  ��   j m   : ;��
�� 
TEXT h o      ���� 0 _input_ _INPUT_ f  r s r r   ? H t u t c   ? F v w v n   ? D x y x 1   B D��
�� 
psxp y l  ? B z���� z b   ? B { | { o   ? @���� 0 _here_ _HERE_ | m   @ A } } � ~ ~  o u t p u t /��  ��   w m   D E��
�� 
TEXT u o      ���� 0 _output_ _OUTPUT_ s   �  r   I \ � � � n   I X � � � 1   V X��
�� 
psxp � l  I V ����� � I  I V�� � �
�� .sysorpthalis        TEXT � m   I L � � � � �  t o o l s . s c p t � �� ���
�� 
in D � m   O R � � � � � & S c r i p t i n g   A d d i t i o n s��  ��  ��   � o      ���� 0 _tools_ _TOOLS_ �  � � � r   ] j � � � n   ] f � � � 1   d f��
�� 
psxp � l  ] d ����� � c   ] d � � � l  ] b ����� � b   ] b � � � o   ] ^���� 0 _bin_ _BIN_ � m   ^ a � � � � � 
 n o d e  ��  ��   � m   b c��
�� 
TEXT��  ��   � o      ���� 0 _node_ _NODE_ �  � � � l  k k��������  ��  ��   �  � � � r   k v � � � I  k r�� ���
�� .sysoloadscpt        file � o   k n���� 0 _tools_ _TOOLS_��   � o      ���� 0 scripttools ScriptTools �  � � � l  w w��������  ��  ��   �  � � � I  w ��� ���
�� .sysoexecTEXT���     TEXT � l  w � ����� � c   w � � � � l  w � ����� � b   w � � � � b   w � � � � b   w ~ � � � o   w z���� 0 _node_ _NODE_ � m   z } � � � � �    � o   ~ ���� 0 _input_ _INPUT_ � m   � � � � � � �  a p p . j s��  ��   � m   � ���
�� 
TEXT��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   ���
set output_file to ((_HERE_ & "output/output.json") as string)
		set input_file to ((_HERE_ & "input/command.sh") as string)
		
		tell ScriptTools
			
			if not file_exists(input_file) then
				error "Things fall apart, the centre cannot hold." number -128
				return
			end if
			
			set shell_cmd to read_file(input_file)
			set shell_script to shell_cmd -- (shell_cmd & pipe & my awk_to_json() & io_out & output_file & "; " & my cat(output_file)) as string
			do shell script shell_script
			
			if file_exists(output_file) then
				log my cat(output_file)
				set the_result to do shell script (my cat(output_file))
				if the_result = "" then
					do shell script ("echo " & my format_result("Success!") & io_out & output_file as string)
				end if
				-- display dialog "Success!"
			else
				do shell script ("echo " & my format_result("Doah!") & io_out & output_file as string)
				-- display dialog "Doah!"
			end if
		end tell
    � � � �T 
 s e t   o u t p u t _ f i l e   t o   ( ( _ H E R E _   &   " o u t p u t / o u t p u t . j s o n " )   a s   s t r i n g ) 
 	 	 s e t   i n p u t _ f i l e   t o   ( ( _ H E R E _   &   " i n p u t / c o m m a n d . s h " )   a s   s t r i n g ) 
 	 	 
 	 	 t e l l   S c r i p t T o o l s 
 	 	 	 
 	 	 	 i f   n o t   f i l e _ e x i s t s ( i n p u t _ f i l e )   t h e n 
 	 	 	 	 e r r o r   " T h i n g s   f a l l   a p a r t ,   t h e   c e n t r e   c a n n o t   h o l d . "   n u m b e r   - 1 2 8 
 	 	 	 	 r e t u r n 
 	 	 	 e n d   i f 
 	 	 	 
 	 	 	 s e t   s h e l l _ c m d   t o   r e a d _ f i l e ( i n p u t _ f i l e ) 
 	 	 	 s e t   s h e l l _ s c r i p t   t o   s h e l l _ c m d   - -   ( s h e l l _ c m d   &   p i p e   &   m y   a w k _ t o _ j s o n ( )   &   i o _ o u t   &   o u t p u t _ f i l e   &   " ;   "   &   m y   c a t ( o u t p u t _ f i l e ) )   a s   s t r i n g 
 	 	 	 d o   s h e l l   s c r i p t   s h e l l _ s c r i p t 
 	 	 	 
 	 	 	 i f   f i l e _ e x i s t s ( o u t p u t _ f i l e )   t h e n 
 	 	 	 	 l o g   m y   c a t ( o u t p u t _ f i l e ) 
 	 	 	 	 s e t   t h e _ r e s u l t   t o   d o   s h e l l   s c r i p t   ( m y   c a t ( o u t p u t _ f i l e ) ) 
 	 	 	 	 i f   t h e _ r e s u l t   =   " "   t h e n 
 	 	 	 	 	 d o   s h e l l   s c r i p t   ( " e c h o   "   &   m y   f o r m a t _ r e s u l t ( " S u c c e s s ! " )   &   i o _ o u t   &   o u t p u t _ f i l e   a s   s t r i n g ) 
 	 	 	 	 e n d   i f 
 	 	 	 	 - -   d i s p l a y   d i a l o g   " S u c c e s s ! " 
 	 	 	 e l s e 
 	 	 	 	 d o   s h e l l   s c r i p t   ( " e c h o   "   &   m y   f o r m a t _ r e s u l t ( " D o a h ! " )   &   i o _ o u t   &   o u t p u t _ f i l e   a s   s t r i n g ) 
 	 	 	 	 - -   d i s p l a y   d i a l o g   " D o a h ! " 
 	 	 	 e n d   i f 
 	 	 e n d   t e l l 
 �  ��� � l  � ���������  ��  ��  ��   " R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 emsg eMsg � �� ���
�� 
errn � o      ���� 0 enum eNum��   # k   � � � �  � � � l  � ��� � ���   � P J do shell script "echo " & format_error(eNum, eMsg) & io_out & output_file    � � � � �   d o   s h e l l   s c r i p t   " e c h o   "   &   f o r m a t _ e r r o r ( e N u m ,   e M s g )   &   i o _ o u t   &   o u t p u t _ f i l e �  ��� � L   � � � � b   � � � � � b   � � � � � o   � ����� 0 enum eNum � m   � � � � � � �    :   � o   � ����� 0 emsg eMsg��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    ----- FUNCTIONS ------ --    � � � � 4   - - - - -   F U N C T I O N S   - - - - - -   - - �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 format_error   �  � � � o      ���� 0 enum eNum �  ��� � o      �� 0 emsg eMsg��  ��   � k     / � �  � � � l     �~ � ��~   � A ; The error number is wrapped in quotes in case it is empty.    � � � � v   T h e   e r r o r   n u m b e r   i s   w r a p p e d   i n   q u o t e s   i n   c a s e   i t   i s   e m p t y . �  � � � l     �} � ��}   � W Q `null` is not wrapped in quotes because we are setting that as a string literal.    � � � � �   ` n u l l `   i s   n o t   w r a p p e d   i n   q u o t e s   b e c a u s e   w e   a r e   s e t t i n g   t h a t   a s   a   s t r i n g   l i t e r a l . �  � � � l     �| � ��|   � R L Example: {"result": null, "errnum": "-128", "errmsg": "The error message."}    � � � � �   E x a m p l e :   { " r e s u l t " :   n u l l ,   " e r r n u m " :   " - 1 2 8 " ,   " e r r m s g " :   " T h e   e r r o r   m e s s a g e . " } �  ��{ � L     / � � b     . � � � b     , � � � b     % � � � b     # � � � b      � � � b      � � � b      � � � b      �  � b     
 b      m      �  { I    �z�y�z 0 qtd   �x m    		 �

  r e s u l t�x  �y   m    	 �  :   n u l l ,    I   
 �w�v�w 0 qtd   �u m     �  e r r n u m�u  �v   � m     �  :   � I    �t�s�t 0 qtd   �r o    �q�q 0 enum eNum�r  �s   � m     �  ,   � I    "�p�o�p 0 qtd   �n m     �  e r r m s g�n  �o   � m   # $ �  :   � I   % +�m�l�m 0 qtd   �k o   & '�j�j 0 emsg eMsg�k  �l   � m   , - �    }�{   � !"! l     �i�h�g�i  �h  �g  " #$# i    %&% I      �f'�e�f 0 format_result  ' (�d( o      �c�c 0 
the_result  �d  �e  & k     )) *+* l     �b,-�b  , A ; The error number is wrapped in quotes in case it is empty.   - �.. v   T h e   e r r o r   n u m b e r   i s   w r a p p e d   i n   q u o t e s   i n   c a s e   i t   i s   e m p t y .+ /0/ l     �a12�a  1 W Q `null` is not wrapped in quotes because we are setting that as a string literal.   2 �33 �   ` n u l l `   i s   n o t   w r a p p e d   i n   q u o t e s   b e c a u s e   w e   a r e   s e t t i n g   t h a t   a s   a   s t r i n g   l i t e r a l .0 454 l     �`67�`  6 R L Example: {"result": null, "errnum": "-128", "errmsg": "The error message."}   7 �88 �   E x a m p l e :   { " r e s u l t " :   n u l l ,   " e r r n u m " :   " - 1 2 8 " ,   " e r r m s g " :   " T h e   e r r o r   m e s s a g e . " }5 9�_9 L     :: b     ;<; b     =>= b     
?@? b     ABA m     CC �DD  {B I    �^E�]�^ 0 qtd  E F�\F m    GG �HH  r e s u l t�\  �]  @ m    	II �JJ  :  > I   
 �[K�Z�[ 0 qtd  K L�YL o    �X�X 0 
the_result  �Y  �Z  < m    MM �NN  }�_  $ OPO l     �W�V�U�W  �V  �U  P QRQ l     �TST�T  S   qtd == "Quoted"   T �UU     q t d   = =   " Q u o t e d "R VWV i    XYX I      �SZ�R�S 0 qtd  Z [�Q[ o      �P�P 0 str  �Q  �R  Y L     \\ b     ]^] b     _`_ m     aa �bb  \ "` o    �O�O 0 str  ^ m    cc �dd  \ "W efe l     �N�M�L�N  �M  �L  f ghg i    iji I      �Kk�J�K 0 cat  k l�Il o      �H�H 0 cat_file  �I  �J  j L     mm b     non m     pp �qq  c a t  o o    �G�G 0 cat_file  h rsr l     �F�E�D�F  �E  �D  s t�Ct i     uvu I      �B�A�@�B 0 awk_to_json  �A  �@  v L     ww m     xx �yy T a w k   ' { p r i n t f     " { \ " r e s u l t \ " :   \ " % s \ " } " ,   $ 1 } '�C       �?z   {|}~��?  z 	�>�=�<�;�:�9�8�7�6�> 0 pipe  �= 
0 io_out  �< 	0 io_in  
�; .aevtoappnull  �   � ****�: 0 format_error  �9 0 format_result  �8 0 qtd  �7 0 cat  �6 0 awk_to_json  { �5  �4�3���2
�5 .aevtoappnull  �   � ****�4  �3  � �1�0�1 0 emsg eMsg�0 0 enum eNum� �/�.�-�,�+�* @�) U�( c�' p�& }�% ��$ ��#�" ��!� � � ���� �
�/ 
rtyp
�. 
ctxt
�- .earsffdralis        afdr
�, 
psxp
�+ 
TEXT�* 0 _app_ _APP_�) 0 _here_ _HERE_�( 0 _bin_ _BIN_�' 0 _lib_ _LIB_�& 0 _input_ _INPUT_�% 0 _output_ _OUTPUT_
�$ 
in D
�# .sysorpthalis        TEXT�" 0 _tools_ _TOOLS_�! 0 _node_ _NODE_
�  .sysoloadscpt        file� 0 scripttools ScriptTools
� .sysoexecTEXT���     TEXT� 0 emsg eMsg� ���
� 
errn� 0 enum eNum�  �2 � �)��l �,�&E�O)��l �%�,�&E�O��%�&�,E�O��%�&�,E�O��%�,�&E�O��%�,�&E�Oa a a l �,E` O�a %�&�,E` O_ j E` O_ a %�%a %�&j OPW X  �a %�%| � ������� 0 format_error  � ��� �  ��� 0 enum eNum� 0 emsg eMsg�  � ��� 0 enum eNum� 0 emsg eMsg� 
	�� 0 qtd  � 0�*�k+ %�%*�k+ %�%*�k+ %�%*�k+ %�%*�k+ %�%} �&������ 0 format_result  � ��� �  �
�
 0 
the_result  �  � �	�	 0 
the_result  � CG�IM� 0 qtd  � �*�k+ %�%*�k+ %�%~ �Y������ 0 qtd  � ��� �  �� 0 str  �  � �� 0 str  � ac� �%�% � j���������  0 cat  �� ����� �  ���� 0 cat_file  ��  � ���� 0 cat_file  � p�� �%� ��v���������� 0 awk_to_json  ��  ��  �  � x�� �ascr  ��ޭ