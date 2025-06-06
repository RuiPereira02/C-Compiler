
%{
        #include <stdlib.h>
        #include "y.tab.h"
%}


_auto           "auto"
_break          "break"
_case           "case"
_char           "char"
_const          "const"
_continue       "continue"
_default        "default"
_do             "do"
_double         "double" 
_else           "else"
_enum           "enum"
_extern         "extern"
_float          "float"
_for            "for"
_goto           "goto"
_if             "if"
_int            "int"
_long           "long"
_register       "register"
_return         "return"
_short          "short"
_signed         "signed"
_sizeof         "sizeof"
_static         "static"
_struct         "struct"
_switch         "switch"
_typedef        "typedef"
_union          "union"
_unsigned       "unsigned"
_void           "void"
_volatile       "volatile"
_while          "while"
__Packed        "_Packed"


_open_paren     "("
_close_paren    ")"
_open_square    "["
_close_square   "]"
_open_curly     "{"
_close_curly    "}"


_digit          [0-9]
_number         _digit+
_letter         [a-zA-Z]
_indentifier    _letter+
_newline        \n
_white_space    [ \t]+
_end_of_file    EOF

%%



{_auto}         {printf("%s auto\n", yytext);}
{_break}        {printf("%s break\n", yytext);}
{_case}         {printf("%s case\n", yytext);}
{_char}         {printf("%s char\n", yytext);}
{_const}        {printf("%s const\n", yytext);}
{_continue}     {printf("%s continue\n", yytext);}
{_default}      {printf("%s default\n", yytext);}
{_do}           {printf("%s do\n", yytext);}
{_double}       {printf("%s double\n", yytext);} 
{_else}         {printf("%s else\n", yytext);}
{_enum}         {printf("%s enum\n", yytext);}
{_extern}       {printf("%s extern\n", yytext);}
{_float}        {printf("%s float\n", yytext);}
{_for}          {printf("%s for\n", yytext);}
{_goto}         {printf("%s goto\n", yytext);}
{_if}           {printf("%s if\n", yytext);}
{_int}          {printf("%s int\n", yytext);}
{_long}         {printf("%s long\n", yytext);}
{_register}     {printf("%s register\n", yytext);}
{_return}       {printf("%s return\n", yytext);}
{_short}        {printf("%s short\n", yytext);}
{_signed}       {printf("%s signed\n", yytext);}
{_sizeof}       {printf("%s sizeof\n", yytext);}
{_static}       {printf("%s static\n", yytext);}
{_struct}       {printf("%s struct\n", yytext);}
{_switch}       {printf("%s switch\n", yytext);}
{_typedef}      {printf("%s typedef\n", yytext);}
{_union}        {printf("%s union\n", yytext);}
{_unsigned}     {printf("%s unsigned\n", yytext);}
{_void}         {printf("%s void\n", yytext);}
{_volatile}     {printf("%s volatile\n", yytext);}
{_while}        {printf("%s while\n", yytext);}
{__Packed}      {printf("%s __Packed\n", yytext);}


{_open_paren}   {printf("%s (\n", yytext);}
{_close_paren}  {printf("%s )\n", yytext);}
{_open_square}  {printf("%s [\n", yytext);}
{_close_square} {printf("%s ]\n", yytext);}
{_open_curly}   {printf("%s {\n", yytext);}
{_close_curly}  {printf("%s }\n", yytext);}


{_number}       {printf("%s number\n", yytext);}
{_letter}       {printf("%s letter\n", yytext);}
{_white_space}
{_newline}
.               {printf("%s ignored\n", yytext);}
{_end_of_file}  {return 0;}

%%

int yywrap(){}

int main(int argc, char **argv)
{
        if(argc)
                yyin = fopen(argv[1],"r");

        yylex();

        return 0;
}
