:- use_module(library(lists)).

children(petya).
children(lena).
children(tanya).

animal(dog).
animal(humster).
animal(cat).

neighbour(C1, C2):-
    H1 = H2,
    children(P1),
    children(P2),
    P1 \= P2,
    C1 = child(P1, H1, _),
    C2 = child(P2, H2, _).

neighbour(P1, P2):-neighbour(P2, P1).

write_list([]):-!.
write_list([H|T]):-write(H), nl, write_list(T).

answer:-
    length(Ans, 3),
    member(child(petya, _, _), Ans),
    member(child(lena, _, _), Ans),
    member(child(tanya, _, cat), Ans),
    member(child(_, _, dog), Ans),
    member(child(_, _, humster), Ans),
    neighbour(child(petya, Entrance, _), child(_, Entrance, humster)),
    not(member(child(petya, _, cat), Ans)),
    write_list(Ans),!.