%%

%class specification
%standalone
%line

//Common Regex goes here
letter = [a-zA-z]
number = [0-9]*

%{
 //code goes here 
%}

%%
//When we find matching expression: do something
{letter} {System.out.println("Found letter");}
{number} {System.out.println("Found number");}
