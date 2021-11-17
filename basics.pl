%CFG Recognition using append/3
%grammar rules
s(C):-np(A), vp(B), append(A,B,C).
np(C):-det(A), n(b), append(A,B,C).
vp(C):-v(A), np(B), append(A,B,C).
vp(C):-v(C).

%declaring members
det([the]}.
det([a]).
n([man]).
n([woman]).
v([shoots]).

%example query:

%?- s([the, woman, shoots, a , man)]
%yes

%This means the string "the woman shoots a man" is a grammatically correct sentence for the given CFG

%We can also ask prolog to list all the possible valid sentences:

%?- s(S)

%S = [the, woman, shoots, a , man]
%S = [the, woman, shoots, the , man]
%S = [the, man, shoots, a , woman]
%....and so on
