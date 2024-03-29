��/ * * * * * *   O b j e c t :     D a t a b a s e   [ j a v a 5 ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 C R E A T E   D A T A B A S E   [ j a v a 5 ]     ( E D I T I O N   =   ' G e n e r a l P u r p o s e ' ,   S E R V I C E _ O B J E C T I V E   =   ' G P _ G e n 5 _ 2 ' ,   M A X S I Z E   =   3 2   G B )   W I T H   C A T A L O G _ C O L L A T I O N   =   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S ,   L E D G E R   =   O F F ;  
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   C O M P A T I B I L I T Y _ L E V E L   =   1 5 0  
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A N S I _ N U L L _ D E F A U L T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A N S I _ N U L L S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A N S I _ P A D D I N G   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A N S I _ W A R N I N G S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A R I T H A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A U T O _ S H R I N K   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S   O N    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   C U R S O R _ C L O S E _ O N _ C O M M I T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   C O N C A T _ N U L L _ Y I E L D S _ N U L L   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   N U M E R I C _ R O U N D A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   Q U O T E D _ I D E N T I F I E R   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   R E C U R S I V E _ T R I G G E R S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S _ A S Y N C   O F F    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   A L L O W _ S N A P S H O T _ I S O L A T I O N   O N    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   P A R A M E T E R I Z A T I O N   S I M P L E    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   R E A D _ C O M M I T T E D _ S N A P S H O T   O N    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T     M U L T I _ U S E R    
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   E N C R Y P T I O N   O N  
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   Q U E R Y _ S T O R E   =   O N  
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T   Q U E R Y _ S T O R E   ( O P E R A T I O N _ M O D E   =   R E A D _ W R I T E ,   C L E A N U P _ P O L I C Y   =   ( S T A L E _ Q U E R Y _ T H R E S H O L D _ D A Y S   =   3 0 ) ,   D A T A _ F L U S H _ I N T E R V A L _ S E C O N D S   =   9 0 0 ,   I N T E R V A L _ L E N G T H _ M I N U T E S   =   6 0 ,   M A X _ S T O R A G E _ S I Z E _ M B   =   1 0 0 ,   Q U E R Y _ C A P T U R E _ M O D E   =   A U T O ,   S I Z E _ B A S E D _ C L E A N U P _ M O D E   =   A U T O ,   M A X _ P L A N S _ P E R _ Q U E R Y   =   2 0 0 ,   W A I T _ S T A T S _ C A P T U R E _ M O D E   =   O N )  
 G O  
 / * * *   T h e   s c r i p t s   o f   d a t a b a s e   s c o p e d   c o n f i g u r a t i o n s   i n   A z u r e   s h o u l d   b e   e x e c u t e d   i n s i d e   t h e   t a r g e t   d a t a b a s e   c o n n e c t i o n .   * * * /  
 G O  
 - -   A L T E R   D A T A B A S E   S C O P E D   C O N F I G U R A T I O N   S E T   M A X D O P   =   8 ;  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A c c o u n t ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A c c o u n t ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ e m a i l ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ p a s s w o r d ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ f u l l n a m e ]   [ n v a r c h a r ] ( 1 0 0 )   N O T   N U L L ,  
 	 [ a v a t a r ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A d m i n ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A d m i n ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ u s e r n a m e ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ p a s s w o r d ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ f u l l n a m e ]   [ n v a r c h a r ] ( 1 0 0 )   N O T   N U L L ,  
 	 [ e m a i l ]   [ v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ p h o n e ]   [ v a r c h a r ] ( 1 1 )   N O T   N U L L ,  
 	 [ b i r t h d a y ]   [ d a t e ]   N O T   N U L L ,  
 	 [ i d e n t i t y N u m b e r ]   [ v a r c h a r ] ( 1 2 )   N O T   N U L L ,  
 	 [ a v a t a r ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A u t h o r ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A u t h o r ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B o o k ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ B o o k ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ t i t l e ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ p r i c e ]   [ f l o a t ]   N O T   N U L L ,  
 	 [ q t y ]   [ i n t ]   N O T   N U L L ,  
 	 [ i n t r o d u c t i o n ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ p i c t u r e P a t h ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ c o n t e n t P a t h ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ a u t h o r I d ]   [ i n t ]   N O T   N U L L ,  
 	 [ c a t e g o r y I d ]   [ i n t ]   N O T   N U L L ,  
 	 [ p u b l i s h e r I d ]   [ i n t ]   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B o o k s O f A c c o u n t ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ B o o k s O f A c c o u n t ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ a c c o u n t I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ b o o k I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ p r o g r e s s ]   [ d e c i m a l ] ( 5 ,   2 )   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ B o o k s O f A c c o u n t ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C a t e g o r y ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C a t e g o r y ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ O r d e r D e t a i l ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ O r d e r D e t a i l ] (  
 	 [ i d ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ o r d e r I D ]   [ i n t ]   N U L L ,  
 	 [ b o o k I D ]   [ i n t ]   N U L L ,  
 	 [ p r i c e ]   [ f l o a t ]   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 	 [ q t y ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ O r d e r D e t a i l ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ O r d e r s ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ O r d e r s ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ o r d e r D a t e ]   [ d a t e ]   N O T   N U L L ,  
 	 [ p h o n e ]   [ v a r c h a r ] ( 1 1 )   N O T   N U L L ,  
 	 [ a c c o u n t I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P u b l i s h e r ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 5 : 4 3   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P u b l i s h e r ] (  
 	 [ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ n a m e ]   [ n v a r c h a r ] ( 2 5 5 )   N O T   N U L L ,  
 	 [ i s A c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ i d ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A c c o u n t ]   O N    
  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 ,   N ' d u c p q p s 2 5 5 2 6 @ f p t . e d u . v n ' ,   N ' 1 2 3 4 ' ,   N ' P h a n   Q u �   �c ' ,   N ' d u c . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 ,   N ' n h u p t q p s 2 5 4 2 9 @ f p t . e d u . v n ' ,   N ' 1 2 3 ' ,   N ' P h �m   T h �  Q u �n h   N h �' ,   N ' n h u . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 4 ,   N ' l o n g p d p s 2 5 8 2 1 @ f p t . e d u . v n ' ,   N ' 1 2 3 ' ,   N ' P h a n   n g   L o n g ' ,   N ' l o n g . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 5 ,   N ' p h a n q u i d u c @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 6 ,   N ' p h a n q u i d u c 1 0 2 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   0 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 7 ,   N ' p h a n q u i d u c 1 2 2 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   D u c ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 8 ,   N ' p h a n q u i d u c 1 1 1 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' 1 2 3 ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 9 ,   N ' p h a n q u i d u c 1 1 1 1 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   D u c ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 1 ,   N ' p h a n q u i d u c a a @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' a d a d a ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 2 ,   N ' p h a n q u i d u c 1 1 1 1 1 1 1 2 3 2 1 3 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' a v a t a r . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 3 ,   N ' p h a n q u i d 1 2 3 1 2 3 u c @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' a v a t a r . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 4 ,   N ' p h a n q u i d u 1 1 1 1 1 2 c @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' a v a t a r . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 5 ,   N ' p h a n q u i d u c 1 0 2 1 2 3 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' a v a t a r . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 6 ,   N ' p h a n q u i d u c 1 0 2 1 2 3 2 1 3 2 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' a v a t a r . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A c c o u n t ]   ( [ i d ] ,   [ e m a i l ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 7 ,   N ' p h a n q u i d u c 1 2 3 1 3 2 1 @ g m a i l . c o m ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' a v a t a r . j p g ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A c c o u n t ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A d m i n ]   O N    
  
 I N S E R T   [ d b o ] . [ A d m i n ]   ( [ i d ] ,   [ u s e r n a m e ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ e m a i l ] ,   [ p h o n e ] ,   [ b i r t h d a y ] ,   [ i d e n t i t y N u m b e r ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 ,   N ' a d m i n ' ,   N ' 1 2 3 ' ,   N ' A n h   A d m i n ' ,   N ' b o k o n l d n l @ g m a i l . c o m ' ,   N ' 0 1 2 3 6 5 8 9 4 7 5 ' ,   C A S T ( N ' 2 0 0 3 - 0 4 - 2 8 '   A S   D a t e ) ,   N ' 0 2 1 5 5 6 5 8 7 6 ' ,   N ' a d m i n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A d m i n ]   ( [ i d ] ,   [ u s e r n a m e ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ e m a i l ] ,   [ p h o n e ] ,   [ b i r t h d a y ] ,   [ i d e n t i t y N u m b e r ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 ,   N ' p h a n q u i d u c ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' p h a n q u i d u c 1 1 @ g m a i l . c o m ' ,   N ' 0 7 0 3 0 3 2 4 8 3 ' ,   C A S T ( N ' 2 0 0 4 - 0 4 - 0 7 '   A S   D a t e ) ,   N ' 0 0 2 1 1 1 1 4 5 6 5 8 ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A d m i n ]   ( [ i d ] ,   [ u s e r n a m e ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ e m a i l ] ,   [ p h o n e ] ,   [ b i r t h d a y ] ,   [ i d e n t i t y N u m b e r ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 ,   N ' p h a n q u i d u c 1 2 3 ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' p h a n q u i d u c 1 1 1 @ g m a i l . c o m ' ,   N ' 0 7 0 3 0 3 2 4 8 3 ' ,   C A S T ( N ' 2 0 0 4 - 0 4 - 0 7 '   A S   D a t e ) ,   N ' 0 0 2 1 1 1 1 4 5 6 5 3 ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A d m i n ]   ( [ i d ] ,   [ u s e r n a m e ] ,   [ p a s s w o r d ] ,   [ f u l l n a m e ] ,   [ e m a i l ] ,   [ p h o n e ] ,   [ b i r t h d a y ] ,   [ i d e n t i t y N u m b e r ] ,   [ a v a t a r ] ,   [ i s A c t i v e ] )   V A L U E S   ( 4 ,   N ' a a a ' ,   N ' 1 2 3 ' ,   N ' P h a n   Q u i   �c ' ,   N ' p h a n q u i d u 2 2 c @ g m a i l . c o m ' ,   N ' 0 7 0 3 0 3 2 4 8 5 ' ,   C A S T ( N ' 2 0 2 3 - 1 0 - 1 6 '   A S   D a t e ) ,   N ' 0 0 2 5 5 5 5 4 8 6 2 2 ' ,   N ' 5 1 6 6 6 1 . j p g ' ,   0 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A d m i n ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A u t h o r ]   O N    
  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 ,   N ' H e c t o r   M a l o t ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 ,   N ' E r n e s t   H e m i n g w a y ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 ,   N ' W i l l i a m   F a u l k n e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 4 ,   N ' N i k o l a i   O s t r o v s k y ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 5 ,   N ' P a u l o   C o e l h o ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 6 ,   N ' S t e p h e n   H a w k i n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 7 ,   N ' M a r g a r e t   M u n n e r l y n   M i t c h e l l ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 8 ,   N ' V i c t o r   H u g o ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 9 ,   N ' M i c h a e l   A .   S i n g e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 0 ,   N ' J e f f r e y   L o n g ,   P a u l   P e r r y ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 1 ,   N ' A j a h n   C h a h ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 2 ,   N ' B r i a n   L .   W e i s s ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 3 ,   N ' N g u y � n   P h o n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 4 ,   N ' S a t o m i   M y o d o ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 5 ,   N ' B a i r d   T .   S p a l d i n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 6 ,   N ' A l e x a n d r a   D a v i d   N e e l ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 7 ,   N ' J a c k   L o n d o n ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 8 ,   N ' J e f f r e y   A r c h e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 9 ,   N ' E m i l y   B r o n t e ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 0 ,   N ' J a n e   A u s t e n ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 1 ,   N ' A n t o i n e   D e   S a i n t - E x u p � r y ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 2 ,   N ' T o l k i e n ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 3 ,   N ' J a r e d   D i a m o n d ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 4 ,   N ' N g u y �n   H i �n   L � ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 5 ,   N ' P h a n   T h a n h   G i �n ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 6 ,   N ' J o h n   B a r r o w ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 7 ,   N ' L �   H y ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 8 ,   N ' Y u v a l   N o a h   H a r a r i ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 9 ,   N ' E r o n o   M u n d a s e p ' ,   1 )  
 I N S E R T   [ d b o ] . [ A u t h o r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 0 ,   N ' H o � n g   Q u �c   H �i ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A u t h o r ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B o o k ]   O N    
  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 ,   N ' K h � n g   G i a   � n h ' ,   1 0 9 0 0 0 ,   2 0 ,   N ' 1 _ K h o n g _ g i a _ d i n h . t x t ' ,   N ' k h o n g - g i a - d i n h . j p g ' ,   N ' 1 - k h o n g - g i a - d i n h . j p g ' ,   1 ,   1 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 ,   N ' � n g   G i �   V �   B i �n   C �' ,   1 1 9 0 0 0 ,   2 0 ,   N ' 2 - o n g - g i a - v a - b i e n - c a . t x t ' ,   N ' o n g _ g i a _ v a _ b i e n _ c a . j p g ' ,   N ' 2 - o n g - g i a - v a - b i e n - c a . d o c x ' ,   2 ,   1 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 6 ,   N ' � m   T h a n h   V �   C u �n g   N �' ,   1 1 9 0 0 0 ,   2 0 ,   N ' 3 - a m - t h a n h - v a - c u o n g - n o . t x t ' ,   N ' a m - t h a n h - v a - c u o n g - n o . j p g ' ,   N ' 3 - a m - t h a n h - v a - c u o n g - n o . d o c x ' ,   3 ,   1 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 8 ,   N ' T h � p   �   T � i   T h �  �y ' ,   1 5 9 0 0 0 ,   2 0 ,   N ' 4 - t h e p - d a - t o i - t h e - d a y . t x t ' ,   N ' t h e p - d a - t o i - t h e - d a y . j p g ' ,   N ' 4 - t h e p - d a - t o i - t h e - d a y . d o c x ' ,   4 ,   1 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 9 ,   N ' N h �   G i �  K i m ' ,   1 7 9 0 0 0 ,   2 0 ,   N ' 5 - n h a - g i a - k i m . t x t ' ,   N ' n h a g i a k i m _ 1 . j p g ' ,   N ' 5 - n h a - g i a - k i m . d o c x ' ,   5 ,   1 ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 0 ,   N ' L ��c   S �  T h �i   G i a n ' ,   2 9 9 0 0 0 ,   2 0 ,   N ' 6 - l u o c - s u - t h o i - g i a n . t x t ' ,   N ' l u o c - s u - t h o i - g i a n . j p g ' ,   N ' 6 - l u o c - s u - t h o i - g i a n . d o c x ' ,   6 ,   1 ,   6 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 1 ,   N ' C u �n   T h e o   C h i �u   G i � ' ,   3 1 9 0 0 0 ,   2 0 ,   N ' 7 - c u o n - t h e o - c h i e u - g i o . t x t ' ,   N ' c u o n - t h e o - c h i e u - g i o . j p g ' ,   N ' 7 - c u o n - t h e o - c h i e u - g i o . d o c x ' ,   7 ,   1 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 2 ,   N ' N h �n g   N g ��i   K h �n   K h �' ,   1 9 9 0 0 0 ,   2 0 ,   N ' 8 - n h u n g - n g u o i - k h o n - k h o . t x t ' ,   N ' n h u n g - n g u o i - k h o n - k h o . j p g ' ,   N ' 8 - n h u n g - n g u o i - k h o n - k h o . d o c x ' ,   8 ,   1 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 3 ,   N ' S �  S �n g   B �t   T �' ,   3 1 9 0 0 0 ,   2 0 ,   N ' 1 0 - s u - s o n g - b a t - t u . t x t ' ,   N ' s u - s o n g - b a t - t u . j p g ' ,   N ' 1 0 - s u - s o n g - b a t - t u . d o c x ' ,   1 0 ,   2 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 4 ,   N ' C �i   T r � i   L i n h   H �n ' ,   9 9 0 0 0 ,   2 0 ,   N ' 9 - c o i - t r o i - l i n h - h o n . t x t ' ,   N ' c o i - t r o i - l i n h - h o n . j p g ' ,   N ' 9 - c o i - t r o i - l i n h - h o n . d o c x ' ,   9 ,   2 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 5 ,   N ' S u �i   N g u �n   T � m   L i n h ' ,   1 1 9 0 0 0 ,   2 0 ,   N ' 1 1 - s u o i - n g u o n - t a m - l i n h . t x t ' ,   N ' s u o i - n g u o n - t a m - l i n h . j p g ' ,   N ' 1 1 - s u o i - n g u o n - t a m - l i n h . d o c x ' ,   1 1 ,   2 ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 6 ,   N ' � m   �n h   T �  K i �p   T r ��c :   B �   M �t   C �a   S �  S �n g   V �   C � i   C h �t ' ,   1 4 9 0 0 0 ,   2 0 ,   N ' 1 2 - a m - a n h - t u - k i e p - t r u o c . t x t ' ,   N ' a m - a n h - t u - k i e p - t r u o c . j p g ' ,   N ' 1 2 - a m - a n h - t u - k i e p - t r u o c . d o c x ' ,   1 2 ,   2 ,   6 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 7 ,   N ' B � n   R �n g   T u y �t   S �n ' ,   2 7 9 0 0 0 ,   2 0 ,   N ' 1 3 - b e n - r a n g - t u y e t - s o n . t x t ' ,   N ' b e n - r a n g - t u y e t - s o n . j p g ' ,   N ' 1 3 - b e n - r a n g - t u y e t - s o n . d o c x ' ,   1 3 ,   2 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 8 ,   N ' H o a   T r � i   T r � n   S � n g   N ��c ' ,   1 8 9 0 0 0 ,   2 0 ,   N ' 1 4 - h o a - t r o i - t r e n - s o n g - n u o c . t x t ' ,   N ' h o a - t r o i - t r e n - s o n g - n u o c . j p g ' ,   N ' 1 4 - h o a - t r o i - t r e n - s o n g - n u o c . d o c x ' ,   1 4 ,   2 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 9 ,   N ' H � n h   T r � n h   V �  P h ��n g   � n g ' ,   8 9 0 0 0 ,   2 0 ,   N ' 1 5 - h a n h - t r i n h - v e - p h u o n g - d o n g . t x t ' ,   N ' h a n h - t r i n h - v e - p h u o n g - d o n g . j p g ' ,   N ' 1 5 - h a n h - t r i n h - v e - p h u o n g - d o n g . d o c x ' ,   1 5 ,   2 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 0 ,   N ' H u y �n   T h u �t   V �   C � c   �o   S )  T � y   T �n g ' ,   3 1 9 0 0 0 ,   2 0 ,   N ' 1 6 - h u y e n - t h u a t - v a - c a c - d a o - s i . t x t ' ,   N ' h u y e n - t h u a t - v a - c a c - d a o - s i - T a y _ t a n g . j p g ' ,   N ' 1 6 - h u y e n - t h u a t - v a - c a c - d a o - s i . d o c x ' ,   1 6 ,   2 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 1 ,   N ' T i �n g   G �i   N �i   H o a n g   D � ' ,   3 0 9 0 0 0 ,   2 0 ,   N ' 1 7 - t i e n g - g o i - n o i - h o a n g - d a . t x t ' ,   N ' t i e n g - g o i - n o i - h o a n g - d a . j p g ' ,   N ' 1 7 - t i e n g - g o i - n o i - h o a n g - d a . d o c x ' ,   1 7 ,   3 ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 2 ,   N ' H a i   S �  P h �n ' ,   2 9 9 0 0 0 ,   2 0 ,   N ' 1 8 - h a i - s o - p h a n . t x t ' ,   N ' h a i - s o - p h a n . j p g ' ,   N ' 1 8 - h a i - s o - p h a n . d o c x ' ,   1 8 ,   3 ,   6 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 3 ,   N ' N a n h   T r �n g ' ,   2 8 9 0 0 0 ,   2 0 ,   N ' 1 9 - n a n h - t r a n g . t x t ' ,   N ' n a n h - t r a n g . j p g ' ,   N ' 1 9 - n a n h - t r a n g . d o c x ' ,   1 7 ,   3 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 4 ,   N ' �i   G i �   H � ' ,   1 6 9 0 0 0 ,   2 0 ,   N ' 2 0 - d o i - g i o - h u . t x t ' ,   N ' d o i - g i o - h u . j p g ' ,   N ' 2 0 - d o i - g i o - h u . d o c x ' ,   1 9 ,   3 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 5 ,   N ' L �   T r �   V �   T � n h   C �m ' ,   1 7 9 0 0 0 ,   2 0 ,   N ' 2 1 - l y - t r i - v a - t i n h - c a m . t x t ' ,   N ' l y - t r i - v a - t i n h - c a m . j p g ' ,   N ' 2 1 - l y - t r i - v a - t i n h - c a m . d o c x ' ,   2 0 ,   3 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 6 ,   N ' N h �   T h �  �c   B �   P a r i s ' ,   1 5 9 0 0 0 ,   2 0 ,   N ' 2 2 - n h a - t h o - d u c - b a . t x t ' ,   N ' n h a - t h o - d u c - b a - p a r i s . j p g ' ,   N ' 2 2 - n h a - t h o - d u c - b a . d o c x ' ,   8 ,   3 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 7 ,   N ' H o � n g   T �  B � ' ,   1 4 9 0 0 0 ,   2 0 ,   N ' 2 3 - h o a n g - t u - b e . t x t ' ,   N ' h o a n g - t u - b e . j p g ' ,   N ' 2 3 - h o a n g - t u - b e . d o c x ' ,   2 1 ,   3 ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 8 ,   N ' C h � a   T �  C �a   N h �n g   C h i �c   N h �n ' ,   1 8 9 0 0 0 ,   2 0 ,   N ' 2 4 - c h u a - t e - c u a - n h u n g - c h i e c - n h a n . t x t ' ,   N ' c h u a - t e - c u a - n h u n g - c h i e c - n h a n . j p g ' ,   N ' 2 4 - c h u a - t e - c u a - n h u n g - c h i e c - n h a n . d o c x ' ,   2 2 ,   3 ,   6 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 9 ,   N ' S � n g ,   V i   T r � n g   V �   T h � p ' ,   8 9 0 0 0 ,   2 0 ,   N ' 2 5 - s u n g - v i - t r u n g . t x t ' ,   N ' s u n g - v i - t r u n g - v a - t h e p . j p g ' ,   N ' 2 5 - s u n g - v i - t r u n g . d o c x ' ,   2 3 ,   4 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 0 ,   N ' T r m   N m   N h � n   L �i ' ,   9 9 0 0 0 ,   2 0 ,   N ' 2 6 - t r a m - n a m - n h i n - l a i . t x t ' ,   N ' t r a m - n a m - n h i n - l a i . j p g ' ,   N ' 2 6 - t r a m - n a m - n h i n - l a i . d o c x ' ,   2 4 ,   4 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 1 ,   N ' L �c h   S �  T h �  G i �i ' ,   1 0 9 0 0 0 ,   2 0 ,   N ' 2 7 - l i c h - s u - t h e - g i o i . t x t ' ,   N ' l i c h - s u - t h e - g i o i . j p g ' ,   N ' 2 7 - l i c h - s u - t h e - g i o i . d o c x ' ,   2 5 ,   4 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 2 ,   N ' S � c h   L �c h   S �  -   M �t   C h u y �n   D u   H � n h   �n   X �  N a m   H � ' ,   2 0 9 0 0 0 ,   2 0 ,   N ' 2 8 - m o t - c h u y e n - d u - h a n h . t x t ' ,   N ' m o t - c h u y e n - d u - h a n h - N a m - H a . j p g ' ,   N ' 2 8 - m o t - c h u y e n - d u - h a n h - d e n - x u - n a m - h a . d o c x ' ,   2 6 ,   4 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 3 ,   N ' �i   V i �t   S �  K �   T o � n   T h �' ,   2 1 9 0 0 0 ,   2 0 ,   N ' 2 9 - d a i - v i e t - s u - k y . t x t ' ,   N ' d a i - v i e t - s u - k i - t o a n - t h u . j p g ' ,   N ' 2 9 - d a i - v i e t - s u - k y . d o c x ' ,   2 7 ,   4 ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 4 ,   N ' S a p i e n s :   L ��c   S �  V �  L o � i   N g ��i ' ,   2 2 9 0 0 0 ,   2 0 ,   N ' 3 0 - l u o c - s u - v e - l o a i - n g u o i . t x t ' ,   N ' l u o c - s u - v e - l o a i - n g u o i . j p g ' ,   N ' 3 0 - l u o c - s u - v e - l o a i - n g u o i . d o c x ' ,   2 8 ,   4 ,   6 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 5 ,   N ' H o � n g   K i m   B �n   H a r a c h i ' ,   2 4 9 0 0 0 ,   2 0 ,   N ' 3 1 - h o a n g - k i m - b a n - h a r a r i . t x t ' ,   N ' h o a n g - k i m - b a n . j p g ' ,   N ' 3 1 - h o a n g - k i m - b a n - h a r a c h i . d o c x ' ,   2 9 ,   4 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 6 ,   N ' B � o   T � p   T r i �u   T r �n ' ,   2 7 9 0 0 0 ,   2 0 ,   N ' 3 2 - b a o - t a p - t r i e u - t r a n . t x t ' ,   N ' b a o - t a p - t r i e u - t r a n - b a o - t a p - c u n g - d i n h . j p g ' ,   N ' 3 2 - b a o - t a p - t r i e u - t r a n . d o c x ' ,   3 0 ,   4 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k ]   ( [ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ q t y ] ,   [ i n t r o d u c t i o n ] ,   [ p i c t u r e P a t h ] ,   [ c o n t e n t P a t h ] ,   [ a u t h o r I d ] ,   [ c a t e g o r y I d ] ,   [ p u b l i s h e r I d ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 7 ,   N ' � d a d a d a ' ,   1 9 9 9 9 9 ,   3 ,   N ' d e m o . t x t ' ,   N ' 4 2 2 0 2 4 8 3 _ 1 0 8 2 3 4 8 2 5 5 2 5 7 0 9 1 _ 5 0 8 4 4 9 4 1 7 3 1 9 7 8 2 8 0 9 6 _ n . j p g ' ,   N ' 1 0 0 1 . d o c x ' ,   1 9 ,   1 ,   1 ,   0 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B o o k ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   O N    
  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 ,   3 ,   2 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 ,   3 ,   1 3 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 4 ,   3 ,   2 1 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 5 ,   3 ,   2 9 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 6 ,   4 ,   1 2 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 7 ,   4 ,   2 0 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 8 ,   4 ,   2 8 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   ( [ i d ] ,   [ a c c o u n t I D ] ,   [ b o o k I D ] ,   [ p r o g r e s s ] ,   [ i s A c t i v e ] )   V A L U E S   ( 9 ,   4 ,   3 6 ,   C A S T ( 0 . 0 0   A S   D e c i m a l ( 5 ,   2 ) ) ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B o o k s O f A c c o u n t ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ C a t e g o r y ]   O N    
  
 I N S E R T   [ d b o ] . [ C a t e g o r y ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 ,   N ' T i �u   t h u y �t ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r y ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 ,   N ' T � m   l � ,   T � m   l i n h ,   T � n   g i � o ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r y ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 ,   N ' V n   h �c   n g h �  t h u �t ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r y ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 4 ,   N ' V n   h � a   x �   h �i   -   l �c h   s �' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ C a t e g o r y ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   O N    
  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 1 ,   1 ,   1 2 ,   1 9 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 3 ,   1 ,   2 0 ,   3 1 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 4 ,   1 ,   2 8 ,   1 8 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 5 ,   1 ,   3 6 ,   2 7 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 7 ,   4 ,   2 ,   1 0 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 8 ,   4 ,   1 3 ,   3 1 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 9 ,   4 ,   2 1 ,   3 0 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 1 0 ,   4 ,   2 9 ,   8 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 1 1 ,   5 ,   2 ,   1 0 9 0 0 0 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   ( [ i d ] ,   [ o r d e r I D ] ,   [ b o o k I D ] ,   [ p r i c e ] ,   [ i s A c t i v e ] ,   [ q t y ] )   V A L U E S   ( 1 2 ,   5 ,   9 ,   1 7 9 0 0 0 ,   1 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ O r d e r D e t a i l ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ O r d e r s ]   O N    
  
 I N S E R T   [ d b o ] . [ O r d e r s ]   ( [ i d ] ,   [ o r d e r D a t e ] ,   [ p h o n e ] ,   [ a c c o u n t I D ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 ,   C A S T ( N ' 2 0 2 3 - 1 0 - 1 2 '   A S   D a t e ) ,   N ' 0 2 1 3 5 4 6 8 7 9 ' ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r s ]   ( [ i d ] ,   [ o r d e r D a t e ] ,   [ p h o n e ] ,   [ a c c o u n t I D ] ,   [ i s A c t i v e ] )   V A L U E S   ( 4 ,   C A S T ( N ' 2 0 2 3 - 1 0 - 1 2 '   A S   D a t e ) ,   N ' 0 3 2 5 4 8 6 5 7 9 ' ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ O r d e r s ]   ( [ i d ] ,   [ o r d e r D a t e ] ,   [ p h o n e ] ,   [ a c c o u n t I D ] ,   [ i s A c t i v e ] )   V A L U E S   ( 5 ,   C A S T ( N ' 2 0 2 3 - 1 0 - 1 9 '   A S   D a t e ) ,   N ' 0 7 0 3 0 3 2 4 8 3 ' ,   1 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ O r d e r s ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P u b l i s h e r ]   O N    
  
 I N S E R T   [ d b o ] . [ P u b l i s h e r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 1 ,   N ' H �i   N h �   V n ' ,   1 )  
 I N S E R T   [ d b o ] . [ P u b l i s h e r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 2 ,   N ' K i m   �n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ P u b l i s h e r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 3 ,   N ' P h �  N �' ,   1 )  
 I N S E R T   [ d b o ] . [ P u b l i s h e r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 4 ,   N ' S k y b o o k ' ,   1 )  
 I N S E R T   [ d b o ] . [ P u b l i s h e r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 5 ,   N ' G i � o   D �c ' ,   1 )  
 I N S E R T   [ d b o ] . [ P u b l i s h e r ]   ( [ i d ] ,   [ n a m e ] ,   [ i s A c t i v e ] )   V A L U E S   ( 6 ,   N ' T r �' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P u b l i s h e r ]   O F F  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ U Q _ _ A c c o u n t _ _ A B 6 E 6 1 6 4 A 9 1 1 9 7 D D ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 6 : 0 0   A M   * * * * * * /  
 A L T E R   T A B L E   [ d b o ] . [ A c c o u n t ]   A D D   U N I Q U E   N O N C L U S T E R E D    
 (  
 	 [ e m a i l ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O N L I N E   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ U Q _ _ A d m i n _ _ 1 1 A 6 9 0 6 A 6 A F D 4 1 C 0 ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 6 : 0 0   A M   * * * * * * /  
 A L T E R   T A B L E   [ d b o ] . [ A d m i n ]   A D D   U N I Q U E   N O N C L U S T E R E D    
 (  
 	 [ i d e n t i t y N u m b e r ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O N L I N E   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ U Q _ _ A d m i n _ _ A B 6 E 6 1 6 4 7 D A B C 2 3 1 ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 6 : 0 0   A M   * * * * * * /  
 A L T E R   T A B L E   [ d b o ] . [ A d m i n ]   A D D   U N I Q U E   N O N C L U S T E R E D    
 (  
 	 [ e m a i l ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O N L I N E   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ U Q _ _ A d m i n _ _ F 3 D B C 5 7 2 D C 4 7 4 0 B 0 ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 6 : 0 0   A M   * * * * * * /  
 A L T E R   T A B L E   [ d b o ] . [ A d m i n ]   A D D   U N I Q U E   N O N C L U S T E R E D    
 (  
 	 [ u s e r n a m e ]   A S C  
 ) W I T H   ( S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   O N L I N E   =   O F F ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A c c o u n t ]   A D D     C O N S T R A I N T   [ D F _ A c c o u n t _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A d m i n ]   A D D     C O N S T R A I N T   [ D F _ A d m i n _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A u t h o r ]   A D D     C O N S T R A I N T   [ D F _ A u t h o r _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k ]   A D D     C O N S T R A I N T   [ D F _ B o o k _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k s O f A c c o u n t ]   A D D     C O N S T R A I N T   [ D F _ B o o k s O f A c c o u n t _ p r o g r e s s ]     D E F A U L T   ( ( 0 ) )   F O R   [ p r o g r e s s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k s O f A c c o u n t ]   A D D     C O N S T R A I N T   [ D F _ B o o k s O f A c c o u n t _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a t e g o r y ]   A D D     C O N S T R A I N T   [ D F _ C a t e g o r y _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r D e t a i l ]   A D D     C O N S T R A I N T   [ D F _ O r d e r D e t a i l _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r D e t a i l ]   A D D     C O N S T R A I N T   [ D F _ O r d e r D e t a i l _ q t y ]     D E F A U L T   ( ( 1 ) )   F O R   [ q t y ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r s ]   A D D     D E F A U L T   ( g e t d a t e ( ) )   F O R   [ o r d e r D a t e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r s ]   A D D     C O N S T R A I N T   [ D F _ O r d e r s _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P u b l i s h e r ]   A D D     C O N S T R A I N T   [ D F _ P u b l i s h e r _ i s A c t i v e ]     D E F A U L T   ( ( 1 ) )   F O R   [ i s A c t i v e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ f k _ a u t h o r I d _ b o o k ]   F O R E I G N   K E Y ( [ a u t h o r I d ] )  
 R E F E R E N C E S   [ d b o ] . [ A u t h o r ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k ]   C H E C K   C O N S T R A I N T   [ f k _ a u t h o r I d _ b o o k ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ f k _ c a t e g o r y I d _ b o o k ]   F O R E I G N   K E Y ( [ c a t e g o r y I d ] )  
 R E F E R E N C E S   [ d b o ] . [ C a t e g o r y ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k ]   C H E C K   C O N S T R A I N T   [ f k _ c a t e g o r y I d _ b o o k ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ f k _ p u b l i s h e r I d _ b o o k ]   F O R E I G N   K E Y ( [ p u b l i s h e r I d ] )  
 R E F E R E N C E S   [ d b o ] . [ P u b l i s h e r ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k ]   C H E C K   C O N S T R A I N T   [ f k _ p u b l i s h e r I d _ b o o k ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k s O f A c c o u n t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ B o o k s O f A c c o u n t _ A c c o u n t ]   F O R E I G N   K E Y ( [ a c c o u n t I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c c o u n t ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k s O f A c c o u n t ]   C H E C K   C O N S T R A I N T   [ F K _ B o o k s O f A c c o u n t _ A c c o u n t ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k s O f A c c o u n t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ B o o k s O f A c c o u n t _ B o o k ]   F O R E I G N   K E Y ( [ b o o k I D ] )  
 R E F E R E N C E S   [ d b o ] . [ B o o k ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B o o k s O f A c c o u n t ]   C H E C K   C O N S T R A I N T   [ F K _ B o o k s O f A c c o u n t _ B o o k ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r D e t a i l ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ O r d e r D e t a i l _ B o o k ]   F O R E I G N   K E Y ( [ b o o k I D ] )  
 R E F E R E N C E S   [ d b o ] . [ B o o k ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r D e t a i l ]   C H E C K   C O N S T R A I N T   [ F K _ O r d e r D e t a i l _ B o o k ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r D e t a i l ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ O r d e r D e t a i l _ O r d e r s ]   F O R E I G N   K E Y ( [ o r d e r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ O r d e r s ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r D e t a i l ]   C H E C K   C O N S T R A I N T   [ F K _ O r d e r D e t a i l _ O r d e r s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ O r d e r s _ A c c o u n t ]   F O R E I G N   K E Y ( [ a c c o u n t I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c c o u n t ]   ( [ i d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ O r d e r s ]   C H E C K   C O N S T R A I N T   [ F K _ O r d e r s _ A c c o u n t ]  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ C a l c u l a t e O r d e r T o t a l ]         S c r i p t   D a t e :   1 0 / 1 9 / 2 0 2 3   4 : 0 6 : 0 0   A M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ C a l c u l a t e O r d e r T o t a l ]      
 @ o r d e r I d   I N T  
 A S  
 B E G I N  
     D E C L A R E   @ t o t a l   D E C I M A L ( 1 0 , 2 )  
  
     S E L E C T   @ t o t a l   =   S U M ( p r i c e   *   q t y )    
     F R O M   [ d b o ] . [ O r d e r s ]   o  
     j o i n   [ d b o ] . [ O r d e r D e t a i l ]   o d  
     o n   o . i d   =   o d . i d ;  
  
     S E L E C T   @ t o t a l  
 E N D  
 G O  
 A L T E R   D A T A B A S E   [ j a v a 5 ]   S E T     R E A D _ W R I T E    
 G O  
 