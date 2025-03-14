:- module(tri_logic,[
    and/3,
    or/3,
    not/1
]).

:- use_module(library(reif)).

% ternary logic.

% While using our ternary predicates, Prolog should succeed when they succceed,
% fail them when they fail and succeed when they neither fail or succeed.

% To achieve this property, we can implement an extra argument that holds the state
% of the predicate like so:

not(u,u).
not(true,false).
not(false,true).

and(true,true,true).
and(A,B,C) :-
    C = u,
    (   A = true, B = u
    ;
        B = true,  A = u
    ;
        A = u, B = u
    ).

or(A,B,true) :-
    A = true ; B = true.
or(A,B,u) :-
    A = u ; B = u.