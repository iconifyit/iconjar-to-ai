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
�� .sysoloadscpt        file ( l    )���� ) c     * + * b     , - , o    ���� 0 _here_ _HERE_ - m     . . � / / 6 t o o l s / o a s / s c r i p t _ t o o l s . s c p t + m    ��
�� 
TEXT��  ��  ��   ' o      ���� 0 scripttools ScriptTools %  0 1 0 l   ��������  ��  ��   1  2�� 2 O    � 3 4 3 k     � 5 5  6 7 6 r     / 8 9 8 b     - : ; : n     + < = < 1   ) +��
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
dflt u m   f i v v � w w  C o n t i n u e��  ��  ��   ] o      ���� 0 node_app  ��  ��   V  x y x l  ~ ~��������  ��  ��   y  z { z l  ~ ~�� | }��   | Z T set user to do shell script "/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'"    } � ~ ~ �   s e t   u s e r   t o   d o   s h e l l   s c r i p t   " / b i n / l s   - l   / d e v / c o n s o l e   |   / u s r / b i n / a w k   ' {   p r i n t   $ 3   } ' " {   �  l  ~ ~��������  ��  ��   �  � � � l  ~ ~�� � ���   �   Run the node main script    � � � � 2   R u n   t h e   n o d e   m a i n   s c r i p t �  ��� � Q   ~ � � � � � k   � � � �  � � � l  � ��� � ���   � W Q do shell script ("chmod 777 " & APPNAME as string) with administrator privileges    � � � � �   d o   s h e l l   s c r i p t   ( " c h m o d   7 7 7   "   &   A P P N A M E   a s   s t r i n g )   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s �  � � � l  � ��� � ���   � W Q do shell script ("source " & APPNAME as string) -- with administrator privileges    � � � � �   d o   s h e l l   s c r i p t   ( " s o u r c e   "   &   A P P N A M E   a s   s t r i n g )   - -   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s �  ��� � l  � ���������  ��  ��  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errstr errStr � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z   � � � ��� � � =  � � � � � o   � ����� 0 errornumber errorNumber � m   � �����  � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � �2 T h e   n o d e   c o m m a n d   l i n e   a p p   c o u l d   n o t   b e   f o u n d   b u t   i s   r e q u i r e d   t o   r u n   t h i s   s c r i p t .   P l e a s e   m a k e   s u r e   n o d e   i s   i n s t a l l e d   i n   / u s r / l o c a l / b i n / n o d e   a n d   t r y   a g a i n .��  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � c   � � � � � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  E r r o r :   � o   � ����� 0 errornumber errorNumber � m   � � � � � � �    -   � o   � ����� 0 errstr errStr��  ��   � m   � ���
�� 
TEXT��  ��   4 o    ���� 0 scripttools ScriptTools��  ��       �� �  ���   � ������ 0 node_app  
�� .aevtoappnull  �   � **** � �� ���� � ���
�� .aevtoappnull  �   � ****��  ��   � ������ 0 errstr errStr�� 0 errornumber errorNumber � "������ "������ .���� E G�� Q���� c�� g���� p s� v�~�}�|�{ ��z � � �
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp
�� 
TEXT�� 0 _here_ _HERE_
�� .sysoloadscpt        file�� 0 scripttools ScriptTools�� 0 appname APPNAME�� 	0 which  �� 0 file_exists  
�� 
dtxt
�� 
disp
�� 
btns
� 
dflt�~ 
�} .sysodlogaskr        TEXT
�| 
ttxt�{ 0 errstr errStr � �y�x�w
�y 
errn�x 0 errornumber errorNumber�w  �z �� �)��l �%�,�&E�O��%�&j E�O� �)��l �%�,�%E�O*�k+ Ec   O*b   k+  3a a a a la a a lva a a  a ,Ec   Y hO hW *X  �a   a j Y a  �%a !%�%�&j Uascr  ��ޭ