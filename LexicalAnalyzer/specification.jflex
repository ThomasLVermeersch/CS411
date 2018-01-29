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
boolean {System.out.print("boolean ");}
break {System.out.print("break ");}
class {System.out.print("class ");}
double {System.out.print("double ");}
else {System.out.print("else ");}
extends {System.out.print("extends ");}
false {System.out.print("false ");}
for {System.out.print("for ");}
if {System.out.print("if ");} 
implements {System.out.print("implements ");}
int {System.out.print("int ");}
interface {System.out.print("interface ");}
newarray {System.out.print("newarray ");}
println {System.out.print("println ");}
readln {System.out.print("readln ");}
return {System.out.print("return ");}
string {System.out.print("string ");}
true {System.out.print("true ");}
void {System.out.print("void ");}
while {System.out.print("while ");}

//When we find matching expression: do something
{letter} {System.out.println("Found letter");}
{number} {System.out.println("Found number");}
