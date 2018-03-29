function u = solution(alf, bet, D, x, t)
num = 2*D*bet*pi*exp(1)^(-D*pi^2*t)*sin(pi*x);
den = alf + bet*exp(1)^(-D*pi^2*t)*cos(pi*x);

u = num / den;