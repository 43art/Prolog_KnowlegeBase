polynomial(A,B,N, Pol):-Pol is N*N+A*N+B.

pr(N):-N<2,!,fail.
pr(2):-!.
pr(N):-pr(N,2).
pr(N,N):-!.
pr(N,I):-Ost is N mod I, Ost > 0, I1 is I+1, pr(N,I1).

loopN(A, B, N, Ans):-polynomial(A, B, N, Res), pr(Res),
    N1 is N + 1, loopN(A, B, N1, Ans); Ans is N,!.