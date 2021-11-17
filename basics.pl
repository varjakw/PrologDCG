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
