burgers2(0,1,0,1,100,16,0);

p = 4:15;
k = arrayfun(@(x) 2^x, p);
h = arrayfun(@(x) x^-1, k);

u = solution(4,3,0.2,0.5,1);
err = zeros(12,1);
w = burgers2(0,1,0,1,100,k(1),0);
for i = 1:12
    w = burgers2(0,1,0,1,100,k(i),0);
    err(i) = abs(w(51, end) - u);
end

plot(h, err, 'o', h, err)

loglog(h, err, 'o', h, err)

for i = 1:12
    w = burgers2(0,1,0,1,200,k(i),0);
    err(i) = abs(w(51, end) - u);
end

plot(h, err, 'o', h, err)

loglog(h, err, 'o', h, err)