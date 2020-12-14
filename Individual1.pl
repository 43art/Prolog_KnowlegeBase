polynomial(A,B,N, Pol):-Pol is N*N+A*N+B.

pr(N):-N<2,!,fail.
pr(2):-!.
pr(N):-pr(N,2).
pr(N,N):-!.
pr(N,I):-Ost is N mod I, Ost > 0, I1 is I+1, pr(N,I1).

maxB(TempRes, Ans, MaxB, _, Res, ResB):-TempRes >= Ans, Res is TempRes, ResB is MaxB,!.
maxB(_, Ans, _, B, Res, ResB):-Res is Ans, ResB is B.

loopN(A, B, N, Ans):-polynomial(A, B, N, Res), pr(Res),
    N1 is N + 1, loopN(A, B, N1, Ans); Ans is N,!.

loopB(_, B, TempRes, MaxB, Res, ResB):-B > 1000, Res is TempRes, ResB is MaxB,!.
loopB(A, B, TempRes, MaxB, Res, ResB):-loopN(A, B, 0, Ans),
    maxB(TempRes, Ans, MaxB, B, Temp, TempB), B1 is B + 1, loopB(A, B1, Temp, TempB, Res, ResB).
