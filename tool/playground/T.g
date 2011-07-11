grammar T;
options {output=AST;}

a:  A b=B B b=B c+=C C c+=C D {String s=$D.text;} -> A* B* C* D ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel=HIDDEN;} ;

/*
c : A B C -> A ( D A B C*)* (B A*)? ;

A : 'a';
B : 'b';
C : 'c';
D : 'd';
SEMI : ';';
WS : ' '|'\t'|'\n' {skip();} ;
*/

/*
r[int a] returns [int b]
scope {int qq;}
	:	x=ID y=r[34] z+=b {$b = 99;}
	;

b	: r[34] {$r::qq = 3;} ;
*/