% generates a random plot of n values between 0 and 1, displayed in 10 bins
function f = hw1_2()
    r1 = rand(12,1000)
    s = sum(r1)
    f = histogram(s)
end