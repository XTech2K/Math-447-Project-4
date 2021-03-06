burgers2(0,1,0,1,100,16,1);

%%

p = 4:15;
k = arrayfun(@(x) 2^x, p);
h = arrayfun(@(x) x^-1, k);

%%

u = solution(4,3,0.2,0.5,1);
err = zeros(12,1);
w = burgers2(0,1,0,1,100,k(1),0);
for i = 1:12
    w = burgers2(0,1,0,1,100,k(i),0);
    err(i) = abs(w(51, end) - u);
end

%%

plot(h, err, 'o', h, err)
xlabel('step size')
ylabel('error')
title('Regular Error Plot (100 Space Steps)')

%%

loglog(h, err, 'o', h, err)
xlabel('log(step size)')
ylabel('log(error)')
title('Log-Log Error Plot (100 Space Steps)')

%%
% As an added experiment, we halved the space interval since it
% seemed to be the limiting factor on reducing the error.

for i = 1:12
    w = burgers2(0,1,0,1,200,k(i),0);
    err(i) = abs(w(101, end) - u);
end

%%


plot(h, err, 'o', h, err)
xlabel('step size')
ylabel('error')
title('Regular Error Plot (200 Space Steps)')

%%

loglog(h, err, 'o', h, err)
xlabel('log(step size)')
ylabel('log(error)')
title('Log-Log Error Plot (200 Space Steps)')