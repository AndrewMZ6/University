clear all;
clc;

n = 4;
a = 1; 
N = 1:n^2;
M = zeros(n);

for l = 1:3
    len = length(M(l,l:n - l));
    for k = 1:4
        b = a + len - 1;
        M(l,l:n - l) = N(a:b);
        a = b + 1;
        M = rot90(M);
    end
end

% костыль
if ~(mod(n, 2) == 0)
    center = floor(n/2) + 1;
    M(center, center) = N(end);
end