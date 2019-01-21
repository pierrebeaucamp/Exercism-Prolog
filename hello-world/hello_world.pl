% Please visit https://exercism.io/tracks/prolog/installation
% for instructions on setting up prolog.
% Visit https://exercism.io/tracks/prolog/tests
% for help running the tests for prolog exercises.

% Replace the goal below with
% your implementation.

hello_world('Hello World!').
hello_world(Name, Message) :-
  atom_concat('Hello ', Name, X),
  atom_concat(X, '!', Message).
