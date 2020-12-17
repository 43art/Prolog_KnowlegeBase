readList(A,N):-readList(A,N,0,[]).
readList(A,N,N,A):-!.
readList(A,N,K,B):-read(X), append(B,[X],B1), K1 is K+1,readList(A,N,K1,B1).

writeList([]):-!.
writeList([H|T]):-write(H), write(' '), writeList(T).

newCheckList(A,N,V,B):-newCheckList(A,N,V,0,[]).
newCheckList(A,N,V,N,TempB, B):-B is TempB,!.
newCheckList([H|T],N,V,K,B):-H < V, K1 is K + 1, newCheckList(T,N,V,K1,B),!.
newCheckList([H|T],N,V,K,TempB,B):-H >= V, append(TempB, [H], TempB1),
    K1 is K + 1, newCheckList(T,N,V,K1,TempB1,B).

te:-
	read(N), readList(A,N), read(V), newCheckList(A, N, V, B), writeList(A).
        %sochet(B,A,N), writeList(B), nl,fail.

sochet([],_,0).
sochet([H|Sub_set],[H|Set],K):-K1 is K-1, sochet(Sub_set,Set,K1),
    writeList(Sub_set), nl,
    writeList(Set), nl.
sochet(Sub_set,[H|Set],K):-sochet(Sub_set,Set,K),
    writeList(Sub_set), nl,
    writeList(Set), nl.

answer:-build_all_sochet. %read(N), readList(A, N),% read(V), writeList(A), nl, write(V),
  % sub_set(A,B).
    %build_all_sochet.

% newCheckList(A, N, V, B), writeList(B).
