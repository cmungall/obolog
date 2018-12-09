% Automatically generated from CL/KIF

is_a(X,X) :- type(X).
is_a(A,C) :- is_a(A,B), is_a(B,C).
equiavelent_to(A,B) :- is_a(A,B), is_a(B,A).
is_a(A,B) :- equiavelent_to(A,B).
subrelation(A,C) :- subrelation(A,B), subrelation(B,C).
% no HILOG..
% no HILOG..
is_a(X,Y) :- all_only(RU,RI), all_some(RE,RI), '?ru'(B,Y), '?re'(A,X), is_a(A,B).
% no HILOG..
% no HILOG..
inverse_of(S,R) :- inverse_of(R,S).
disjoint_from(S,R) :- disjoint_from(R,S).
% no HILOG..
% no HILOG..
% no HILOG..
cyclic(R) :- '?r'(A,B), '?r'(B,A), fail.
equivalent_to(B,C) :- functional(R), '?r'(A,B), '?r'(A,C).
% no HILOG..
instance_of(A,X) :- domain(R,X), '?r'(A,B).
instance_of(B,X) :- range(R,X), '?r'(A,B).
instance_of(B,Y) :- all_only(RU,RI), '?ru'(X,Y), '?ri'(A,B), instance_of(A,'Occurrent'), instance_of(B,'Occurrent'), instance_of(A,X).
unsatisfiable(A) :- is_a(A,X), is_a(B,X), disjoint_from(A,B).
abstract('either restatements of obolog axioms as horn rules, or rules derived from axioms + RO definitions').
is_a(X,X) :- type(X).
is_a(A,C) :- is_a(A,B), is_a(B,C).
equiavelent_to(A,B) :- is_a(A,B), is_a(B,A).
is_a(A,B) :- equiavelent_to(A,B).
subrelation(A,C) :- subrelation(A,B), subrelation(B,C).
% no HILOG..
% no HILOG..
is_a(X,Y) :- all_only(RU,RI), all_some(RE,RI), '?ru'(B,Y), '?re'(A,X), is_a(A,B).
% no HILOG..
% no HILOG..
inverse_of(S,R) :- inverse_of(R,S).
disjoint_from(S,R) :- disjoint_from(R,S).
% no HILOG..
% no HILOG..
% no HILOG..
cyclic(R) :- '?r'(A,B), '?r'(B,A), fail.
equivalent_to(B,C) :- functional(R), '?r'(A,B), '?r'(A,C).
% no HILOG..
instance_of(A,X) :- domain(R,X), '?r'(A,B).
instance_of(B,X) :- range(R,X), '?r'(A,B).
instance_of(B,Y) :- all_only(RU,RI), '?ru'(X,Y), '?ri'(A,B), instance_of(A,'Occurrent'), instance_of(B,'Occurrent'), instance_of(A,X).
unsatisfiable(A) :- is_a(A,X), is_a(B,X), disjoint_from(A,B).
% =>(inverse_of(?r, ?s), inverse_of(?s, ?r))
% =>(<=>(?r(?x, ?y), ?s(?y, ?x)), <=>(?s(?x, ?y), ?r(?y, ?x)))
% cannot have exprs on LHS: ..
% =>(inverse_of(?r, ?s), inverse_of(?s, ?r))
% =>(<=>(?r(?x, ?y, ?t), ?s(?y, ?x, ?t)), <=>(?s(?x, ?y), ?r(?y, ?x)))
% cannot have exprs on LHS: ..
% =>(and(subrelation(?a, ?b), subrelation(?b, ?c)), subrelation(?a, ?c))
% =>(and(subrelation(?a, ?b), subrelation(?b, ?c)), =>(?a(?x, ?y, ?t), ?c(?x, ?y, ?t)))
% cannot have exprs on LHS: ..
% =>(and(subrelation(?a, ?b), subrelation(?b, ?c)), subrelation(?a, ?c))
% =>(and(subrelation(?a, ?b), subrelation(?b, ?c)), =>(?a(?x, ?y), ?c(?x, ?y)))
% cannot have exprs on LHS: ..
% =>(inverse_of(?r, ?s), inverse_of(?s, ?r))
% =>(<=>(?r(?x, ?y), ?s(?y, ?x)), <=>(?s(?x, ?y), ?r(?y, ?x)))
% cannot have exprs on LHS: ..
% =>(inverse_of(?r, ?s), inverse_of(?s, ?r))
% =>(<=>(?r(?x, ?y), ?s(?y, ?x)), <=>(?s(?x, ?y, ?t), ?r(?y, ?x, ?t)))
% cannot have exprs on LHS: ..
% =>(and(domain(?r, ?x), ?r(?a, ?b)), instance_of(?a, ?x))
% =>(and(domain(?r, ?x), ?r(?a, ?b)), ?x(?a))
% no HILOG..
% =>(and(range(?r, ?x), ?r(?a, ?b)), instance_of(?b, ?x))
% =>(and(range(?r, ?x), ?r(?a, ?b)), ?x(?b))
% no HILOG..
% =>(and(all_only(?ru, ?ri), ?ru(?X, ?Y), ?ri(?a, ?b), instance_of(?a, Occurrent), instance_of(?b, Occurrent), instance_of(?a, ?X)), instance_of(?b, ?Y))
% =>(and(all_only(?ru, ?ri), ?ru(?X, ?Y), ?ri(?a, ?b), instance_of(?a, Occurrent), instance_of(?b, Occurrent), instance_of(?a, ?X)), ?Y(?b))
% no HILOG..
