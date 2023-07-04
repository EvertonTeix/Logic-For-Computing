%LISTA 12

%QUESTÃO 1

% filme(Título, Gênero, Ano, Duração)
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', comédia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).


% a) Um filme é longo se tem duração superior a 150 minutos.

%longo(X): X é longo.
longo(X):- filme(X,_,_,Y), Y > 150.

% b) Um filme é lançamento se foi lançado a menos de 1 ano.

lancamento(X):- filme(X,_,Y,_), D is 2023 - Y, D < 2.

%QUESTÃO 2

% país(Nome, Área, População)
país(brasil, 9, 130).
país(china, 12, 1800).
país(eua, 9, 230).
país(índia, 3, 450).

%dens(P,D): País(P) tem densidade(D). 
dens(P,D):-  país(P, A, PP), D is PP/A.

% a) dens(P,D).

% b) país(índia,_,X), país(china,_,Y), X > Y.

%QUESTÃO 3

% func(Código, Nome, Salário)
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).

% dep(Código, Nome)
dep(1, ary).
dep(3, raí).
dep(3, eva).

% a) func(_,X,Y), Y > 1500, Y < 3000.
% b) func(X,Y,Z), not(dep(X,_)), Z < 1200.
% c) func(X,_,Z), dep(X,Y), Z > 1700.

%QUESTÃO 4

%pessoa(Nome, Gênero, Idade, Altura, Peso)
pessoa('ana', f, 23, 1.55, 56.00).
pessoa('bia', f, 19, 1.71, 61.3).
pessoa('ivo', m, 22, 1.80, 70.5).
pessoa('lia', f, 17, 1.85, 57.3).
pessoa('eva', f, 28, 1.75, 68.7).
pessoa('ary', m, 25, 1.72, 68.9).

% a) pessoa(X,f,I,_,_), I > 20.
% b) pessoa(X,_,_,A,P), A >= 1.70, P < 65.
% c) pessoa(X,m,_,AlturaHomem,_), pessoa(Y,f,_,AlturaMulher,_), AlturaHomem > AlturaMulher.

%QUESTÃO 5

modelo(X) :- pessoa(X, f, I, AL, P), I < 25, AL > 1.70, P =< (62.1 * AL) - 44.7.







