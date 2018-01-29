%%

%class specification
%standalone
%line

//Common Regex goes here
letter = [a-zA-z]
number = [0-9]*
hex = (0x|0X)[0-9A-Fa-f]*+
digit = [0-9]
newline = [\n]
ws = [ \t]+
string = \"[^"\n]*\"
exponent = ((E|e)("+"|"-")?({digit}+))
float1 = {digit}+"."{digit}+{exponent}?
float2 = {digit}+{exponent}
double = ({float1}|{float2})
integer = {hex}|{digit}+
identifier = {letter}({letter}|{digit}|"_")*   

%{
 //code goes here 

%}

%%

//comments
"/*"(([^*]|(("*"+)[^*/]))*)("*"+)"/"\n = { /* skip */ }
"//"((.)*)\n = { /* skip */ }

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

//booleans
true|false {System.out.print("bool")}

//operators
"+"         { System.out.print("plus ") }
"-"         { System.out.print("minus ") }
"*"         { System.out.print("multiplication ") }
"/"         { System.out.print("division ") }
"<="        { System.out.print("lessequal ") }
">"         { System.out.print("greater ") }
">="        { System.out.print("greaterequal ") }
"=="        { System.out.print("equal ") }
"!="        { System.out.print("notequal ") }
"="         { System.out.print("assignop ") }
";"         { System.out.print("semicolon ") }
","         { System.out.print("comma ") }
"."         { System.out.print("period ") }
"("         { System.out.print("leftparen ") }
")"         { System.out.print("rightparen ") }
"["         { System.out.print("leftbracket ") }
"]"         { System.out.print("rightbracket ") }
"{"         { System.out.print("leftbrace ") }
"}"         { System.out.print("rightbrace ") }

{newline}       { System.out.print("\n") }
{integer}       { System.out.print("intconstant ") }
{double}        { System.out.print("doubleconstant ") }
{string}        { System.out.print("stringconstant ") }
{identifier}    { System.out.print("id ") }
{ws}            {; /* ignore whitespace */ }
.               {; /* ignore bad characters */ }
