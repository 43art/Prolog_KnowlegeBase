pr(N):-N<2,!,fail.
pr(2):-!.
pr(N):-pr(N,2).
pr(N,N):-!.
pr(N,I):-Ost is N mod I, Ost > 0, I1 is I+1, pr(N,I1).

poly(A,B,N, Ans):-Ans is N*N+A*N+B, pr(Ans).