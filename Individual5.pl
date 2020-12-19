writeStr([]):-!.
writeStr([H|T]):-put(H), writeStr(T).

countLetter(L, A, Count):-countLetter(L, A, 0, Count).
countLetter(_, [], TempCount, Count):-Count is TempCount.
countLetter(L, [L|T], TempCount, Count):-TempCount1 is TempCount + 1, countLetter(L, T, TempCount1, Count), !.
countLetter(L, [_|T], TempCount, Count):-countLetter(L, T, TempCount, Count).

inList([H|_], H).
inList([_|T], E):-inList(T, E).

addWord(Word, K):-
    countLetter(97, Word, CountA), countLetter(98, Word, CountB), countLetter(99, Word, CountC),
    countLetter(100, Word, CountD), countLetter(101, Word,CountE), countLetter(102, Word, CountF),
    CountLeeters = [CountA, CountB, CountC, CountD, CountE, CountF], checkCount(CountLeeters, K), writeStr(Word), nl, !.
checkCount(CountLetters, K):-countLetter(5, CountLetters, C5), C5 = 1, countLetter(K, CountLetters, Ck), Ck = 1.

buildWords(_, 0, K, Word):-addWord(Word, K), !, fail.
buildWords(A, N, K, Word):-N > 0, inList(A, El), N1 is N-1, buildWords(A, N1, K, [El|Word]).

checkRules(_, 5):-!, fail.
checkRules(N, K):-N < K + 5, !, fail.
checkRules(N, K):-N > K + 9, !, fail.
checkRules(N, K):-K = 1, N >= 7, !, fail.
checkRules(N, K):-buildWords([97, 98, 99, 100, 101, 102], N, K, []).

answer:-read(N), read(K), tell('C:/Users/Alexey/Desktop/4 course/Knowledge base/IndividualTasks/output5.txt'),
     checkRules(N, K), told.