--tri par insertion n'est pas vraiment ça...Ici, j'ai ajouté une valeur qu'on doit placer dans un tableau trié......

with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;



procedure Tri_Insertion is

Taille_Max: constant Integer:=10;
type Tab is array (0..Taille_Max) of Integer;
Tableau:Tab:=(1,2,3,6,7,8,9,others=>0);
E:Integer:=0;


procedure Insert(T:in out Tab;E:Integer) is
   Compteur1:Integer:=0; --compteur1 sert a trouver ou placer sa valeur
   Compteur2:Integer:=0; --sert a savoir ou est le dernier élément du tableau afin de remonter et de tout décaler
begin
   while T(Compteur1) <= E and then T(Compteur1) /=0 loop
      Compteur1:=Compteur1+1;
   end loop;
   while T(Compteur2)/=0 loop
      Compteur2:=Compteur2+1;
   end loop;
   
   while Compteur2/=Compteur1-1 loop
      T(compteur2+1):=T(compteur2);
   Compteur2:=Compteur2-1;   
   end loop;
   T(Compteur1):=E;
end;

begin     
       for I in Tableau'Range loop
	  New_Line;
	  Put(Integer'Image(Tableau(I)));
	      end loop;
	  New_Line;
	  Put("Quel entier voulez vous insérer?");
	  Get(E);
	  Insert(Tableau,E);
	  for p in Tableau'Range loop
	  New_Line;
	  Put(Integer'Image(Tableau(p)));
	  end loop;
	  
end Tri_Insertion;




   









