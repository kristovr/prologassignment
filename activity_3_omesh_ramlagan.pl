
/* Define a fact that 
takes an anonymous variable 
and two lists. This defines that our fact can
deal with any number and any size of list items*/

scalarMult(_, [], []).

/* This rule specifies that scalarMult/3 
takes a variable X and takes an element from the
first list, multiplies it and sets it as the head
of the result list. And with the use of recursion 
the rest of the list is exhausted*/

scalarMult(X, [Head|Tail], [Headx|Result]) :- Headx is Head * X,
                                                scalarMult(X,Tail,Result).