% generates a random plot of n values between 0 and 1, displayed in 10 bins
function f = hw1_1(n)
    r1 = rand(n,1);
    f = histogram(r1,10);
end