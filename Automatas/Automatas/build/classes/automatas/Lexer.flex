
packege automatas;
import static codigo.Tokens.*;

%%
%class Lexer
%type Tokens

//--------------------------EXPRESIONES---------------------//
L=[a-zA-Z]+     //los + funcionan para que lea o analice hasta que se encuentre un espacio
D=[0-9]+
Espacio=[ ,\t,\r,\n]+    //se le pone el + en caso de que se encuentre mas de uno
Simbolo= [@!¿?$%&¡]


%{
    public String lexeme;    // clase publica 
%}

//----------PALABRAS RESERVADAS---------------//
ent|bool|doble|car|retorno|nulo|void|si|sino|mientras|
setup|ciclo {lexeme=yytext(); return Reservadas;} //faltan mas palabras reservadas

//----------ESPACIOS Y COMENTARIOS------------//
{espacio} {/*ignore*/}
"//".* {/*Ignore*/}

//---------OPERADORES LOGICOS,RELACIONALES, ETC------//
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}

">" {return Mayorque;}
"<" {return Menorque;}
">=" {return MayoroIgualque;}
"<=" {return MenoroIgualque;}
"==" {return IdenticoA;}
"!=" {return DiferenteA;}
"&" {return Conjuncion;}
"|" {return Or;}
"~" {return Negacion;}

";" {return PuntoyC;}
":" {return Dospunt;}
"," {return Coma;}
"." {return Punto;}
"{" {return Llave_a;}
"}" {return Llave_c;}
"[" {return Corchete_a;}
"]" {return Corchete_c;}
"(" {return Parent_a;}
")" {return Parent_c;}
"++" {return Op_Incremento;}
"--" {return Op_Decremento;}

//----------RECONOCER LAS EXPRESIONES---------------//

//----------RECONOCER ERRROERES --------------------//





//----------FIN DE LEXICO--------------------//

//-----------------------------------------------AQUI EMPIEZA LA SIGUIENTE PARTE-------------------------------------//