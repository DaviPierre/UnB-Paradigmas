estudante(ana, 3, 'Engenharia de Software').
estudante(beto, 1, 'Engenharias').
estudante(carlos, 4, 'Engenharia de Energia').
estudante(diane, 2, 'Engenharias').
estudante(euler, 1, 'Engenharias').
estudante(fabio, 5, 'Engenharia de Software').
estudante(gustavo, 8, 'Engenharia de Software').
estudante(heitor, 7, 'Engenharia de Energia').
estudante(ian, 3, 'Engenharias').

matricula('C´alculo 1', ana).
matricula('C´alculo 1', fabio).
matricula('C´alculo 1', diane).
matricula('C´alculo 1', euler).
matricula('C´alculo 1', gustavo).
matricula('C´alculo 1', ian).

matricula('IAL', beto).
matricula('IAL', diane).
matricula('IAL', euler).

matricula('APC', carlos).
matricula('APC', fabio).
matricula('APC', gustavo).
matricula('APC', ian).

% RULES

tem_calouros :-
  write('Calouros matriculados: '), nl,
  estudante(X, 1, _),
  matricula(Z, X),
  tab(2), write(Z), nl,
  fail.

% Garante que a regra exista
tem_calouros.

turma_mista :-
  write('Diciplinas que tem ao menos um aluno de cada curso: '), nl,
  estudante(X, _, 'Engenharia de Software'),
  estudante(Y, _, 'Engenharia de Energia'),
  estudante(Z, _, 'Engenharias'),
  matricula(Diciplina, X),
  matricula(Diciplina, Y),
  matricula(Diciplina, Z),
  tab(2), write(Diciplina), nl,
  fail.

turma_mista.

software :-
  write('Alunos de Software: '), nl,
  estudante(Estudante, _ , 'Engenharia de Software'),
  tab(2), write(Estudante), nl,
  fail.

software.
