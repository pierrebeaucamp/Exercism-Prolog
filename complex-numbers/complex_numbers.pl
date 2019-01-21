real((R,_), R).
imaginary((_,I), I).

abs((R,I),A) :- A is sqrt(R ^ 2 + I ^ 2).
conjugate((R,I),(R,CI)) :- CI is 0 - I.

add((R1,I1),(R2,I2),(R3,I3)) :- R3 is R1 + R2, I3 is I1 + I2.
sub((R1,I1),(R2,I2),(R3,I3)) :- R3 is R1 - R2, I3 is I1 - I2.

mul((R1,I1),(R2,I2),(R3,I3)) :-
  R3 is R1 * R2 - I1 * I2,
  I3 is I1 * R2 + I2 * R1.

div((R1,I1),(R2,I2),(R3,I3)) :-
  X1 is R1 * R2 + I1 * I2,
  X2 is I1 * R2 - R1 * I2,
  Y is R2 ^ 2 + I2 ^ 2,
  R3 is X1 / Y,
  I3 is X2 / Y.

