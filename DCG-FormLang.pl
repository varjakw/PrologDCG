% The formal language "Even" is very sim[;e, consisting of all strings containing
% an even number of as and nothing else. Note that the empty string belongs
% to "Even".

s --> [].
s --> [a,a],s.

% We can see that s in line 6 will be replaced by another two as and so on.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% We will define the language a^n b^n

s --> [].
s--> l,s,r.
l --> [a].
r --> [b].

%?- s([a,a,a,b,b,b],[]).
% yes

%?- s([a,a,a,a,b,b,b],[]).
% no

%? - s(X,[])
% X = [];
% X = [a,b];
% X = [a,a,b,b];
%....so on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%The formal language a^n b^2m, c^2m, d^n consits of all strings of form 
% where the number of a's and d's is equal and the number of b's and c's
%is even and equal. e.g. abbccd, aabbbbccccdd.

%A DCG to generate this language:

s --> m.
s --> [a], s, [d].
m --> [].
m --> [b,b], m, [c,c].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
