right_of(andromeda, tom).
right_of(terrence, andromeda).
right_of(viola, terrence).
right_of(tracey, viola).
right_of(liz, tracey).
right_of(merula, liz).
right_of(zoe, merula).
right_of(ismelda, zoe).
right_of(salazar, ismelda).
right_of(adrian, salazar).
right_of(horace, adrian).
right_of(blaise, horace).
right_of(pansy, blaise).
right_of(milicent, pansy).
right_of(marcus, milicent).
right_of(gregory, marcus).
right_of(vincent, gregory).
right_of(tom, vincent).

left_of(B,A) :- right_of(A,B).
/* if person A sits to the right of person B 
then the left must be the opposite of the right*/

are_neighbours_of(A,B,C) :- left_of(A,C) , right_of(B,C).
/* person C has a neighbour if person A is sitting left of C 
AND person B is sitting right of C*/

next_to_each_other(A,B) :- right_of(A,B) ; not(right_of(A,B)).
/* two persons are sitting next to each other if A is to the
right of B OR if A is not to the right of B, meaning: left*/