clc
m= input( " Please select 1 for rock, 2 for paper and 3 for scissors: ");
n = randi([1,3],1);
if (m == 1 && n== 2)
    disp( " the computer wins.")
elseif ( m== 2 && n == 1)
        disp( " the user wins.")
elseif ( m== 2 && n== 3 )
        disp( " the user wins.")
elseif (m==3 && n==1 )
    disp( " the computer wins.")
elseif(m==3 && n== 2)
    disp( " the user wins.")
elseif( m==2 && n== 3)
    disp( " the computer wins.")
elseif(m==n)
    disp( "It's a tie!")
else
   disp( " Please Check your input!!") 
end