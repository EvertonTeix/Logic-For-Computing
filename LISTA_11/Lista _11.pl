%lista 11

%QUESTÃO 1

%urso, peixe, raposa, veado e grama são constantes

%come(X,Y): X come Y
come(urso,peixe).
come(peixe,peixinho).
come(peixinho,alga).
come(guaxinim,peixe).
come(urso,guaxinim).
come(urso,raposa).
come(raposa,coelho).
come(coelho,grama).
come(urso,veado).
come(veado,grama).
come(lince,veado).

%animal(X): X é animal
animal(urso).
animal(peixe).
animal(peixinho).
animal(guaxinim).
animal(coelho).
animal(raposa).
animal(veado).
animal(lince).

%planta(X): X é planta
planta(grama).
planta(alga).

% a) animal(urso).
% b) come(urso,X).
% c) come(X,Y), planta(Y).
% d) come(X,Y), animal(Y).

% e) presa(X): X é uma presa
presa(X):- come(Y,X), animal(Y), animal(X).

% f) predador(X): X é uma presa
predador(X):- come(X,Y), animal(X), animal(Y).

%QUESTÃO 2

na_cadeia(X,Y) :- come(X,Y).
na_cadeia1(X,Y) :- come(X,Z), na_cadeia(Z,Y).

% exemplo de consulta: na_cadeia1(urso, peixinho).

%QUESTÃO 3

%progenitor(X,Y): X é progenitor de Y
progenitor(joao, maria).
progenitor(joao, pedro).
progenitor(maria, ana).
progenitor(maria, carlos).

% filho(X): X é filho de Y
filho(X, Y) :- progenitor(Y, X).

% avo(X,Z) X avô/avó de Z
avo(X, Z) :- progenitor(X, Y), progenitor(Y, Z).

% a) filho(X, joao).
% 	 filho(X, maria).

% b) avo(X,ana).
% c) progenitor(X,_).


%QUESTÃO 4

% mulher(X): X é uma mulher.
mulher(ana).
mulher(bia).
mulher(marcia).
mulher(joana).
mulher(maria).

% homem(X): X é um homem
homem(joao).
homem(pedro).
homem(jose).
homem(carlos).

%QUESTÃO 5

% casal(X,Y): X é casado ou casada com Y

casal(joao,ana).
casal(antonio, bia).
casal(jose, marcia).
casal(joana, nike).

%QUESTÃO 6

ascendente(X, Y) :- progenitor(X, Y).
ascendente1(X, Y) :- progenitor(X, Z), ascendente(Z, Y).

% exemplo de consulta: ascendente1(joao,X).
%                      ascendente(X,maria).

%QUESTÃO 7

% irmao(X,Y): X é irmao de Y
irmao(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X \= Y, homem(X).

% irma(X,Y): X é irmã de Y
irma(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X \= Y, mulher(X).

