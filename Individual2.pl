readList(A,N):-readList(A,N,0,[]).
readList(A,N,N,A):-!.
readList(A,N,K,B):-read(X), append(B,[X],B1), K1 is K+1,readList(A,N,K1,B1).

writeList([]):-!.
writeList([H|T]):-write(H), write(' '), writeList(T).

answer:-read(N), readList(A, N), read(V), writeList(A), nl, write(V).
