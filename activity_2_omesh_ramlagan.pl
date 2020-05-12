% reorder the facts for better readabilty

directFlight(paris,moscow).
directFlight(moscow,istanbul).
directFlight(istanbul,dhaka).
directFlight(dhaka,cairo).
directFlight(cairo,shanghai).
directFlight(shanghai,tokyo).
directFlight(tokyo,delhi).

travelFromTo(A,B) :- directFlight(A,B).
%IF we can fly from A to B then it means we can travel from A to B

travelFromTo(A,B):- directFlight(A,C) , travelFromTo(C,B).

/* We can travel from A to B if we can get a direct flight
from the starting point to a known country and taking that 
known city and checking to see if we can fly to another
known city until we find a match B. This is possible
because we defined we can travel from A to B if we can
get a direct flight from A to B*/