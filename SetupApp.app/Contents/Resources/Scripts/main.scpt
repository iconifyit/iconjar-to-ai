FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 node_app    m        � 	 	 & / u s r / l o c a l / b i n / n o d e   
  
 j    �� �� 0 
foldername 
folderName  m       �    i c o n j a r - t o - a i      l     ��������  ��  ��     ��  i    	    I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    k     �       l     ��������  ��  ��        r         c         n         1   	 ��
�� 
psxp  l    	  ����   b     	 ! " ! l     #���� # I    �� $ %
�� .earsffdralis        afdr $  f      % �� &��
�� 
rtyp & m    ��
�� 
ctxt��  ��  ��   " m     ' ' � ( (  : :��  ��    m    ��
�� 
TEXT  o      ���� 0 _here_ _HERE_   ) * ) r     + , + n     - . - 1    ��
�� 
psxp . l    /���� / b     0 1 0 l    2���� 2 I   �� 3 4
�� .earsffdralis        afdr 3 m     5 5�                                                                                  ART5  alis    �  Macintosh HD                   BD ����Adobe Illustrator.app                                          ����            ����  
 cu             Adobe Illustrator CC 2018   ?/:Applications:Adobe Illustrator CC 2018:Adobe Illustrator.app/   ,  A d o b e   I l l u s t r a t o r . a p p    M a c i n t o s h   H D  <Applications/Adobe Illustrator CC 2018/Adobe Illustrator.app  / ��   4 �� 6��
�� 
rtyp 6 m    ��
�� 
ctxt��  ��  ��   1 m     7 7 � 8 8  : :��  ��   , o      ���� 0 _ai_ _AI_ *  9 : 9 l   ��������  ��  ��   :  ; < ; r    ) = > = I   '�� ?��
�� .sysoloadscpt        file ? l   # @���� @ c    # A B A b    ! C D C o    ���� 0 _here_ _HERE_ D m      E E � F F 6 t o o l s / o a s / s c r i p t _ t o o l s . s c p t B m   ! "��
�� 
TEXT��  ��  ��   > o      ���� 0 scripttools ScriptTools <  G H G l  * *��������  ��  ��   H  I�� I O   * � J K J k   . � L L  M N M r   . = O P O b   . ; Q R Q n   . 9 S T S 1   7 9��
�� 
psxp T l  . 7 U���� U b   . 7 V W V l  . 5 X���� X I  . 5�� Y Z
�� .earsffdralis        afdr Y  f   . / Z �� [��
�� 
rtyp [ m   0 1��
�� 
ctxt��  ��  ��   W m   5 6 \ \ � ] ]  : :��  ��   R m   9 : ^ ^ � _ _  s e t u p . s h P o      ���� 0 appname APPNAME N  ` a ` l  > >��������  ��  ��   a  b c b r   > L d e d I   > F�� f���� 	0 which   f  g�� g m   ? B h h � i i  n o d e��  ��   e o      ���� 0 node_app   c  j k j l  M M��������  ��  ��   k  l m l Z   M � n o���� n H   M X p p I   M W�� q���� 0 file_exists   q  r�� r o   N S���� 0 node_app  ��  ��   o r   [ � s t s n   [ � u v u 1    ���
�� 
ttxt v l  [  w���� w I  [ �� x y
�� .sysodlogaskr        TEXT x m   [ ^ z z � { { � T h e   n o d e   a p p   c o u l d   n o t   b e   f o u n d .   P l e a s e   e n t e r   t h e   p a t h   t o   t h e   a p p   a n d   c l i c k   ` C o n t i n u e ` . y �� | }
�� 
dtxt | m   a d ~ ~ �     } �� � �
�� 
disp � m   g h����  � �� � �
�� 
btns � J   k s � �  � � � m   k n � � � � �  C a n c e l �  ��� � m   n q � � � � �  C o n t i n u e��   � �� ���
�� 
dflt � m   v y � � � � �  C o n t i n u e��  ��  ��   t o      ���� 0 node_app  ��  ��   m  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Run the node main script    � � � � 2   R u n   t h e   n o d e   m a i n   s c r i p t �  ��� � Q   � � � � � � k   � � � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   1. Check for node    � � � � $   1 .   C h e c k   f o r   n o d e �  � � � l  � ��� � ���   �   2. Check for npm    � � � � "   2 .   C h e c k   f o r   n p m �  � � � l  � ��� � ���   �   3. Check for Xcode cli    � � � � .   3 .   C h e c k   f o r   X c o d e   c l i �  � � � l  � ��� � ���   � + % 4. Copy IconJar to Artboards to _AI_    � � � � J   4 .   C o p y   I c o n J a r   t o   A r t b o a r d s   t o   _ A I _ �  � � � l  � ��� � ���   � ( " 5. Install required node packages    � � � � D   5 .   I n s t a l l   r e q u i r e d   n o d e   p a c k a g e s �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   �,&set theTargetFolder to ""			set theParentFolder to POSIX path of (choose folder with prompt "Please select an output folder:")			set theTargetFolder to POSIX path of (theParentFolder & folderName as string)						repeat while exists (theParentFolder & folderName as string)				set theParentFolder to POSIX path of (choose folder with prompt "Folder " & folderName & " already exists in that location. Please choose a different folder.")				set theTargetFolder to POSIX path of (theParentFolder & folderName as string)			end repeat			return theTargetFolder						set destination to get_unique_destination(folderName, "Choose a target folder for the IconJar to Illustrator repo")						do shell script (("git clone --recursive git@github.com:iconifyit/iconjar-to-ai.git " & destination as string))    � � � �L  s e t   t h e T a r g e t F o l d e r   t o   " "  	 	 	 s e t   t h e P a r e n t F o l d e r   t o   P O S I X   p a t h   o f   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P l e a s e   s e l e c t   a n   o u t p u t   f o l d e r : " )  	 	 	 s e t   t h e T a r g e t F o l d e r   t o   P O S I X   p a t h   o f   ( t h e P a r e n t F o l d e r   &   f o l d e r N a m e   a s   s t r i n g )  	 	 	  	 	 	 r e p e a t   w h i l e   e x i s t s   ( t h e P a r e n t F o l d e r   &   f o l d e r N a m e   a s   s t r i n g )  	 	 	 	 s e t   t h e P a r e n t F o l d e r   t o   P O S I X   p a t h   o f   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " F o l d e r   "   &   f o l d e r N a m e   &   "   a l r e a d y   e x i s t s   i n   t h a t   l o c a t i o n .   P l e a s e   c h o o s e   a   d i f f e r e n t   f o l d e r . " )  	 	 	 	 s e t   t h e T a r g e t F o l d e r   t o   P O S I X   p a t h   o f   ( t h e P a r e n t F o l d e r   &   f o l d e r N a m e   a s   s t r i n g )  	 	 	 e n d   r e p e a t  	 	 	 r e t u r n   t h e T a r g e t F o l d e r  	 	 	  	 	 	 s e t   d e s t i n a t i o n   t o   g e t _ u n i q u e _ d e s t i n a t i o n ( f o l d e r N a m e ,   " C h o o s e   a   t a r g e t   f o l d e r   f o r   t h e   I c o n J a r   t o   I l l u s t r a t o r   r e p o " )  	 	 	  	 	 	 d o   s h e l l   s c r i p t   ( ( " g i t   c l o n e   - - r e c u r s i v e   g i t @ g i t h u b . c o m : i c o n i f y i t / i c o n j a r - t o - a i . g i t   "   &   d e s t i n a t i o n   a s   s t r i n g ) )  �  � � � l  � ���������  ��  ��   �  ��� � l  � ���������  ��  ��  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errstr errStr � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z   � � � ��� � � =  � � � � � o   � ����� 0 errornumber errorNumber � m   � �����  � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � �2 T h e   n o d e   c o m m a n d   l i n e   a p p   c o u l d   n o t   b e   f o u n d   b u t   i s   r e q u i r e d   t o   r u n   t h i s   s c r i p t .   P l e a s e   m a k e   s u r e   n o d e   i s   i n s t a l l e d   i n   / u s r / l o c a l / b i n / n o d e   a n d   t r y   a g a i n .��  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � c   � � � � � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  E r r o r :   � o   � ����� 0 errornumber errorNumber � m   � � � � � � �    -   � o   � ����� 0 errstr errStr��  ��   � m   � ���
�� 
TEXT��  ��   K o   * +���� 0 scripttools ScriptTools��  ��       � �   ��   � �~�}�|�~ 0 node_app  �} 0 
foldername 
folderName
�| .aevtoappnull  �   � **** � �{ �z�y � ��x
�{ .aevtoappnull  �   � ****�z  �y   � �w�v�w 0 errstr errStr�v 0 errornumber errorNumber � %�u�t�s '�r�q�p 5 7�o E�n�m \ ^�l h�k�j z�i ~�h�g � ��f ��e�d�c�b ��a � � �
�u 
rtyp
�t 
ctxt
�s .earsffdralis        afdr
�r 
psxp
�q 
TEXT�p 0 _here_ _HERE_�o 0 _ai_ _AI_
�n .sysoloadscpt        file�m 0 scripttools ScriptTools�l 0 appname APPNAME�k 	0 which  �j 0 file_exists  
�i 
dtxt
�h 
disp
�g 
btns
�f 
dflt�e 
�d .sysodlogaskr        TEXT
�c 
ttxt�b 0 errstr errStr � �`�_�^
�` 
errn�_ 0 errornumber errorNumber�^  �a �x �)��l �%�,�&E�O���l �%�,E�O��%�&j E�O� �)��l �%�,�%E�O*a k+ Ec   O*b   k+  3a a a a la a a lva a a  a ,Ec   Y hO hW *X   �a !  a "j Y a #�%a $%�%�&j U ascr  ��ޭ