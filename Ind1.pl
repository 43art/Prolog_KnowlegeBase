max(X,Y,X):-X>Y,!.
max(_,Y,Y):-!.

pr(N):-N<2,!,fail.
pr(2):-!.
pr(N):-pr(N,2).
pr(N,N):-!.
pr(N,I):-Ost is N mod I, Ost > 0, I1 is I+1, pr(N,I1).

polynomial(A,B,N, Pol):-Pol is N*N+A*N+B.

funcAB(A,B,N0,Ans):-polynomial(A,B,N0,Res), pr(Res),
    N1 is N0 + 1, funcAB(A,B,N1,Ans); Ans is N0,!.

funcA(_, B0, _, _):-B0 > 1000,!.
funcA(A, B0, Mx0, Res):-funcAB(A,B0,0,Ans),
    write(Ans), write(' '), write(Ans), write(' '),%write(B0), write(' '), nl,
   % ((Mx0 =< Ans) -> Mx0 is Ans),
   % write(Mx0),% write(' after '),% write(B0), write(' '), nl,
   % max(Mx0,Temp,Mx0),
   % write(Temp), write('  '),nl,% write(B0), write(' '), nl,
    B1 is B0 + 1, (Mx0 =< Ans -> Mx0 is Ans ; Res = Ans),
    write(Res), nl,
   % write(Ans), write(' '), write(B0), write(' '), nl,
    funcA(A,B1,Mx0,Res).

%funcB(A0, _, _, _):-A0 > 1000,!.
%funcB(A0,B,Mx0,Res):-funcA(A0,B,0,Ans),
%    A1 is A0 + 1, funcB(A1,B,Mx0,Res).
