with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
with Ada.Numerics.Float_Random;

package body ChThree is

   procedure QnOne is
      Line: String(1..132);
      Last: Natural;
      Count: Integer := 1;
   begin
      
      loop
         Ada.Text_IO.Get_Line(Line, Last);
         
         if Count mod 10 /= 0 then
            Ada.Text_IO.Put("Ch 3 Qn 1   > ");
            Ada.Text_IO.Put_Line(Line(1..Last));
         end if;
         
         Count := Count + 1;
      end loop;
      
   end QnOne;
   
   procedure QnTwo (Month: Months; Year: Integer) is 
      Days: Integer := 0;
   begin
      
      case Month is
         when Jan | Mar | May| Jul | Aug | Oct | Dec => Days := 31;
         when Feb =>
            if Year mod 4 = 0 then
               Days := 28;
            elsif Year mod 400 = 0 then
               Days := 29;
            elsif Year mod 100 = 0 then
               Days := 28;
            else
               Days := 29;
            end if;
            
         when others => Days := 30;
      end case;
      
      Ada.Text_IO.Put("Ch 3 Qn 2   > ");
      Ada.Text_IO.Put("Days in month: ");
      Ada.Integer_Text_IO.Put(Days, 1);
   end QnTwo;
   
   procedure QnThree is
      NumIterations: Integer := 1000000000;
      Accum: Integer := 0;
      Answer: Float := 0.0;
      
      A: Constant Float := 0.5;
      B: Constant Float := 0.5;
      
      P: Float := 0.0;
      Q: Float := 0.0;
      
      Gen: Ada.Numerics.Float_Random.Generator;
      U: Ada.Numerics.Float_Random.Uniformly_Distributed;
   begin
      
      
      for X in 1..NumIterations loop
         -- for point (p,q) and circle (a,b) ==> (p - a)^2 + (q - b)^2 < r^2
         -- when a point is within the circle
         U := Ada.Numerics.Float_Random.Random(Gen);
         P := U;
         U := Ada.Numerics.Float_Random.Random(Gen);
         Q := U;
      
         if (P - A) ** 2 + (Q - B) ** 2 < A ** 2 then
            Accum := Accum + 1;
         end if;
      end loop;
      
      
      Answer := 4.0 * (Float(Accum) / Float(NumIterations));
      Ada.Text_IO.Put("Ch 3 Qn 2   > ");
      Ada.Float_Text_IO.Put(Answer, 1);
      
   end QnThree;

end ChThree;
