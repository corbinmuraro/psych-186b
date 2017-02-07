% generates a random 12x1000 matrix, summed into 1000 values, and displayed
% displayed in 12 bins

function f = hw1_2()
    randNumbers = rand(12,1000);
    s = sum(randNumbers);
    f = histogram(s,20);
end