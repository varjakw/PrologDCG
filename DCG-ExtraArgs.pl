% The previous DCG ignores some basic facts about english:

% she and he are subject pronouns while her and him are obejct pronouns.
% We can do this using extra arguments.

s $-->$ np(subject), vp. 
np(_) $-->$ det, n. 
np(X) $-->$ pro(X).
vp $-->$ v, np(object). 
vp $-->$ v. 
det $-->$ [the].     
det $-->$ [a]. 
n $-->$ [man].    
n $-->$ [woman].   
v $-->$ [shoots].
pro(subject) $-->$ [he].
pro(subject) $-->$  [she].
pro(object) $-->$ [him].
pro(object) $-->$ [her].

%?- s([she, shoots, he],[])
%no
