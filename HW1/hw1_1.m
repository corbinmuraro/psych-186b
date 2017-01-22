% generates a plot of 50000 random values between 0 and 1, displayed in 10 bins
function f = hw1_1()
    randNumbers = rand(50000,1);
    f = histogram(randNumbers,10);
end