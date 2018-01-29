%%

%class specification
%standalone
%line

letter = [a-zA-z]

%%

{letter} {System.out.println("Found letter");}
