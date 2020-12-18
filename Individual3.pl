writeStr([]):-!.
writeStr([H|T]):-put(H), writeStr(T),!.

readStrings:-readStrFile(Flag), readStrStatus(Flag).

readStrStatus(-1):-!.
readStrStatus(10):-readStrFile(Flag), readStrStatus(Flag).

readStrFile(Flag):-get0(X), readStr(X, [], Flag).

readStr(10, A, 10):-writeStr(A), nl,!.
readStr(37, A, Flag):-get0(X), skipOneLine(X, A, Flag),!.
readStr(-1, A, -1):-writeStr(A), seen, told,!.
readStr(X, A, Flag):-append(A, [X], A1), get0(X1), readStr(X1, A1, Flag). 

skipOneLine(10, A, 10):-writeStr(A), nl,!.
skipOneLine(_, A, _):-get0(X), skipOneLine(X, A, _).

answer:-see('C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/input3.txt'),
		tell('C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/output3.txt'), readStrings.