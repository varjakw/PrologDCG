%We will define the language a^n b^n

s --> [].#
s--> l,s,r.
l --> [a].
r --> [b].

%?- s([a,a,a,b,b,b],[]).
% yes

%?- s([a,a,a,a,b,b,b],[]).
% no