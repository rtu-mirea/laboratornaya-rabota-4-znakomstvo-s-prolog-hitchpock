domains
  s=symbol
predicates
  parent(s,s)
  female(s)
  male(s)
  mother(s,s)
  father(s,s)
  ancestor(s,s)
  child(s,s)
  grandfather(s,s)
  grandmother(s,s)
  sister(s,s)
  brother(s,s)
  uncle(s,s)
  
clauses
  parent(pam,bob).
  parent(tom,bob).
  parent(tom,liz).
  parent(pam,liz).
  parent(bob,ann).
  parent(bob,pat).
  parent(pat,jim).
  parent(clerk,george).
  parent(joseph,george).
  parent(mark,joseph).
  female(pam).
  female(liz).
  female(ann).
  female(pat).
  female(clerk).
  male(tom).
  male(bob).
  male(jim).
  male(george).
  male(joseph).
  male(mark).
  child(Y,X):- parent(X,Y).
  mother(X,Y):-  parent(X,Y),female(X). 
  father(X,Y):-	 parent(X,Y),male(X).
  ancestor(X,Z):- parent(X,Z). /* X - ïðåäîê Z */
  ancestor(X,Z):- parent(X,Y),ancestor(Y,Z).
  grandfather(X,Y):- parent(Z,Y),parent(X,Z),male(X).
  grandmother(X,Y):- parent(Z,Y),parent(X,Z),female(X).
  sister(X,Y):- parent(Z,X), parent(Z,Y),female(X),X<>Y.
  brother(X,Y):- parent(Z,Y),parent(Z,X),male(X),X<>Y.
  uncle(X,Y):- parent(Parent,Y),brother(X,Parent).
  
  
goal
  %grandfather(mark,george).
  %male(george).
  %child(george,joseph).
  %child(clerk,joseph).
  %ancestor(mark,george).
  %sister(liz,bob).
  brother(bob,liz).
  
