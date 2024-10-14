with Ada.Text_IO;
with Ada.Integer_Text_IO;

package body ChTwo is

   procedure QnTwo is 
      FirstNumber: Integer := 0;
      SecondNumber: Integer := 0;
   begin
      
      -- get two integers from cin and display the larger
      Ada.Integer_Text_IO.Get(FirstNumber);
      Ada.Integer_Text_IO.Get(SecondNumber);
      
      Ada.Text_IO.Put("Ch 2 Qn 2   > ");
      if FirstNumber > SecondNumber then
         Ada.Integer_Text_IO.Put(FirstNumber);
      else
         Ada.Integer_Text_IO.Put(SecondNumber);
      end if;
      
      Ada.Text_IO.New_Line; 
      
   end QnTwo;
   
   procedure QnThree is
      NumberOfFives: Integer := 0;
      CurrentNumber: Integer := -1;
   begin
      
      while CurrentNumber /= 0 loop
         Ada.Integer_Text_IO.Get(CurrentNumber);
         if CurrentNumber = 5 then
            NumberOfFives := NumberOfFives + 1;
         end if;
         
      end loop;
      
      Ada.Text_IO.Put("Ch 2 Qn 3   > ");
      Ada.Integer_Text_IO.Put(NumberOfFives);
      
   end QnThree;

   procedure QnFour is
      MyCoolVar: Integer range 0..999 := 100;
   begin
      Ada.Text_IO.Put("Ch 2 Qn 4   > ");
      Ada.Integer_Text_IO.Put(MyCoolVar);
      
   end QnFour;
   
   procedure QnFive is
      End_Mark: Constant Character := '#';
   begin
      Ada.Text_IO.Put("Ch 2 Qn 5   > ");
      Ada.Text_IO.Put(End_Mark);
      
   end QnFive;
   
   procedure QnSix is 
      K: Integer := 1;
   begin
      
      while K <= 10 loop
         Ada.Text_IO.Put("Ch 2 Qn 6.1   > ");
         Ada.Integer_Text_IO.Put(K);
         Ada.Text_IO.New_Line;
         K := K + 1;
      end loop;
      
      k := 1;
      
      loop
         Ada.Text_IO.Put("Ch 2 Qn 6.2   > ");
         Ada.Integer_Text_IO.Put(K);
         Ada.Text_IO.New_Line;
         K := K + 1;
         exit when K > 10;
      end loop;
      
   end QnSix;
   
end ChTwo;
