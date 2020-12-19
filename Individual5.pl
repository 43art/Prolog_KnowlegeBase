writeStr([]):-!.
writeStr([H|T]):-put(H), writeStr(T),!.

checkRules(_, 5):-!, fail.
checkRules(N, K):-N < K + 5, !, fail.
checkRules(N, K):-N > K + 9, !, fail.
checkRules(N, K):-K = 1, N >= 7, !, fail.
checkRules(N, K):-buildWords([97, 98, 99, 100, 101, 102], N, K, []).

answer:-read(N), read(K), checkRules(N, K).