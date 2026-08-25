male('abraham').
male('clancy').
male('herb').
male('homer').
male('bart').

female('mona').
female('jackie').
female('marge').
female('selma').
female('patty').
female('lisa').
female('maggie').
female('ling').

father('abraham', 'homer').
father('abraham', 'herb').
father('clancy', 'marge').
father('clancy', 'patty').
father('clancy', 'selma').
father('homer', 'bart').
father('homer', 'lisa').
father('homer', 'maggie').

mother('mona', 'homer').
mother('jackie', 'marge').
mother('jackie', 'patty').
mother('jackie', 'selma').
mother('marge', 'bart').
mother('marge', 'lisa').
mother('marge', 'maggie').
mother('selma', 'ling').

brotherhood(X, Y) :-
  (mother(Mae, X) , mother(Mae, Y) ; father(Pai, X) , father(Pai, Y)) , X \= Y.  

uncle(Muleque, Tio) :-
  father(Pai, Muleque),
  brotherhood(Pai, Tio).

aunt(Muleque, Tia) :-
  mother(Mae, Muleque),
  brotherhood(Mae, Tia).

grandmother(Avó, Neto) :-
  (mother(Mae, Neto) , mother(Avó, Mae)) ;
  (father(Pai, Neto) , mother(Avó, Pai)).

grandfather(Avô, Neto) :-
  (mother(Mae, Neto) , father(Avô, Mae)) ;
  (father(Pai, Neto) , father(Avô, Pai)).



















