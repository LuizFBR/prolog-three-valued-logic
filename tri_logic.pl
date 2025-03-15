:- module(tri_logic,[
    andt/3,
    ort/3,
    nott/2
]).

% Using table to improve determinism
:- table andt/3, ort/3, nott/2.

andt(true, true, true).
andt(false, true, false).
andt(u, true, u).
andt(true, false, false).
andt(false, false, false).
andt(u, false, false).
andt(true, u, u).
andt(false, u, false).
andt(u, u, u).

ort(true, true, true).
ort(false, true, true).
ort(u, true, true).
ort(true, false, true).
ort(false, false, false).
ort(u, false, u).
ort(true, u, true).
ort(false, u, u).
ort(u, u, u).

nott(true,false).
nott(false,true).
nott(u,u).