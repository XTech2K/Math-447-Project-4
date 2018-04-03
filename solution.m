function u = solution(alf, bet, D, x, t)
num = 2*D*bet*pi*exp(-D*pi^2*t)*sin(pi*x);
den = alf + bet*exp(-D*pi^2*t)*cos(pi*x);

u = num / den;