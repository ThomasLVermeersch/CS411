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


//keywords
boolean {System.out.println("boolean");}
break {System.out.println("break");}
class {System.out.println("class");}
double {System.out.println("double");}
else {System.out.println("else");}
extends {System.out.println("extends");}
false {System.out.println("false");}
for {System.out.println("for");}
if {System.out.println("if");} 
implements {System.out.println("implements");}
int {System.out.println("int");}
interface {System.out.println("interface");}
newarray {System.out.println("newarray");}
println {System.out.println("println");}
readln {System.out.println("readln");}
return {System.out.println("return");}
string {System.out.println("string");}
true {System.out.println("true");}
void {System.out.println("void");}
while {System.out.println("void");}

//When we find matching expression: do something
{letter} {System.out.println("Found letter");}
{number} {System.out.println("Found number");}
