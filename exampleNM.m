
function exampleGlyNa
P0=[GlyNa(:,1),GlyNa(:,2)]
Popt=fminsearch(@objectif,P0)


function F=objectif(P)
A1=P(1)
A2=P(2)
A3=P(3)
F=abs(A1*T+A2*C+A3)
