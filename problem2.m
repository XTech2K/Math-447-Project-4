burgers2(0,1,0,1,100,16,0);

p = 4:8;
k = arrayfun(@(x) 2^x, p);

u = solution(3,4,0.2,0.5,1);
err = zeros(5,1);

for i = 1:5
    w = burgers2(0,1,0,1,100,k(i),0);
    err(i) = abs(w(50, k(i)) - u);
end

err
loglog(k,err,'o')