polynomial(A,B,N, Pol):-Pol is N*N+A*N+B.

pr(N):-N<2,!,fail.
pr(2):-!.
pr(N):-pr(N,2).
pr(N,N):-!.
pr(N,I):-Ost is N mod I, Ost > 0, I1 is I+1, pr(N,I1).

maxB(TempRes, Ans, MaxB, _, Res, ResB):-TempRes >= Ans, Res is TempRes, ResB is MaxB,!.
maxB(_, Ans, _, B, Res, ResB):-Res is Ans, ResB is B.

maxA(TempRes, TempResA, MaxA, _, MaxB, _, Res, ResA, ResB):-TempRes >= TempResA,
    Res is TempRes, ResA is MaxA, ResB is MaxB,!.
maxA(_, TempResA, _, A, _, B, Res, ResA, ResB):-Res is TempResA, ResA is A, ResB is B.

loopN(A, B, N, AnsN):-polynomial(A, B, N, Res), pr(Res),
    N1 is N + 1, loopN(A, B, N1, AnsN); AnsN is N,!.

loopB(_, B, TempRes, MaxB, Res, ResB):-B > 1000, Res is TempRes, ResB is MaxB,!.
loopB(A, B, TempRes, MaxB, Res, ResB):-loopN(A, B, 0, AnsN),
    maxB(TempRes, AnsN, MaxB, B, Temp, TempB), B1 is B + 1, loopB(A, B1, Temp, TempB, Res, ResB).

loopA(A, TempRes, MaxA, MaxB, Res, ResA, ResB):-A > 1000, Res is TempRes, ResA is MaxA, ResB is MaxB,!.
loopA(A, TempRes, MaxA, MaxB, Res, ResA, ResB):-
    loopB(A, -1000, 0, 0, TempResA, TempMaxB), maxA(TempRes, TempResA, MaxA, A, MaxB, TempMaxB, ResMax, TempA, TempB),
    A1 is A + 1, loopA(A1, ResMax, TempA, TempB, Res, ResA, ResB).

answer:-loopA(-1000, 0, 0, 0, Res, ResA, ResB), Answer is ResA * ResB,
    write(Res), write(' '), write(Answer), write(' '), write(ResA), write(' '), write(ResB),!.
