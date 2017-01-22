part3();

function part3()
    numTrials = 5000;
    dimensionalities = [10, 20, 50, 100, 250, 500, 1000, 2000];
    
    for dimension = dimensionalities
        for trial = 1 : numTrials
             values(trial) = makeDotProduct(dimension);
        end
        
        histogram(values);
        meanVal = mean(values);
        stdVal = std(values);
        
        fprintf('Dimension: %d, Mean: %f, Standard Deviation: %f\n', dimension, meanVal, stdVal);
    end
    

    function [result] = makeDotProduct(dimension)
        v1 = rand([1, dimension]) - 0.5;
        v1_ = v1 / norm(v1);
        v2 = rand([1, dimension]) - 0.5;
        v2_ = v2 / norm(v2);
        result = dot(v1_,v2_);
    end
end

% (a) The dot product of two normalized vectors indicates the angle between
% the vectors. Because both vectors used in the function are normalized,
% the results are indicative of this angle.

% (b) 
% Dimension: 10, Mean: -0.002444, Standard Deviation: 0.311748
% Dimension: 20, Mean: 0.000745, Standard Deviation: 0.224792
% Dimension: 50, Mean: 0.001999, Standard Deviation: 0.141262
% Dimension: 100, Mean: -0.001217, Standard Deviation: 0.100400
% Dimension: 250, Mean: 0.000473, Standard Deviation: 0.063842
% Dimension: 500, Mean: -0.000592, Standard Deviation: 0.044276
% Dimension: 1000, Mean: 0.000469, Standard Deviation: 0.031666
% Dimension: 2000, Mean: -0.000214, Standard Deviation: 0.022629

% (c) As dimensionality increases, the means get closer to 0. Any error is
% purely due to the randomness of generating random numbers. Hence, the
% means approach zero asymptotically as means increase. This calculation
% reveals nothing interesting or surprising.

% (d) Using the formula for expected value and variance, I found standard 
% deviation to be the 1 / sqrt(# dimensions). This agrees with the results 
% I got, and after looking at Matlab results, the same appears to hold true
% for higher dimensions.