with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;

procedure Tri_Selection is
   Taille_Max :Constant Integer:=10;
   type Tab is array (0..Taille_Max) of Integer;
   T:Tab:=(12,11,546,3,-856,4453,4,5136,466,144654,13);
   compteur:Integer:=0;
   
   procedure Swap (A:in out Integer ; B:in out Integer) is
     C:Integer;
begin
   C:=A;
   A:=B;
   B:=C;
end;
   
   procedure Affiche(T: in Tab) is
      begin
      for I in T'Range loop
	 New_Line;
	 Put(Integer'Image(T(I)));
      end loop;
      end;
   
begin
    Affiche(T);
   while Compteur /= Taille_Max loop
   for K in Compteur .. Taille_max  loop
      if T(k) <= T(Compteur) then 
	 Swap(T(Compteur),T(K));
      end if;
   end loop;
   Compteur:=Compteur+1;
   end loop;
   New_Line;
   Affiche(T);
end;

     
   





