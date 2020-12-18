writeStr([]):-!.
writeStr([H|T]):-put(H), writeStr(T),!.

readStrings:-readStrFile(Flag), readStrStatus(Flag).

readStrStatus(-1):-!.
readStrStatus(10):-readStrFile(Flag), readStrStatus(Flag).

readStrFile(Flag):-get0(X), readStr(X, [], Flag).

readStr(10, A, 10):-writeStr(A), nl,!.
readStr(37, A, Flag):-get0(X1), skipOneLine(X1, A, Flag),!.
readStr(47, A, Flag):-get0(X1), leftSide(X1, A, Flag),!.
readStr(-1, A, -1):-writeStr(A), seen, told,!.
readStr(X, A, Flag):-append(A, [X], A1), get0(X1), readStr(X1, A1, Flag). 

leftSide(42, A, Flag):-get0(X1), skipMultiline(X1, A, Flag).
leftSide(-1, A, -1):-readStr(-1, A, -1).
leftSide(B, A, Flag):-append(A, [47], A1), append(A1, [B], B1), get0(X1), readStr(X1, B1, Flag).

rightSide(47, A, Flag):-get0(X1), readStr(X1, A, Flag),!.
rightSide(B, A, _):-skipMultiline(B, A, _).
rightSide(10, A, _):-get0(X1), rightSide(X1, A, _).
rightSide(-1, A, -1):-readStr(-1, A, -1),!.

skipMultiline(42, A, Flag):-get0(X1), rightSide(X1, A, Flag).
skipMultiline(_, A, _):-get0(X1), skipMultiline(X1, A, _).

skipOneLine(10, A, 10):-writeStr(A), nl,!.
skipOneLine(_, A, _):-get0(X), skipOneLine(X, A, _).

answer:-see('C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/input3.txt'),
		tell('C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/output3.txt'), readStrings.