part1();

function part1
    numDimensions = 100;
    f = makeNormalizedVector(1, numDimensions);
    g = makeNormalizedVector(1, numDimensions);
    A = g * f'; % outer product
    gPrime = A * f;

    disp('Angle between g and g prime should be one: ');
    disp(cos(acos(dot(g, gPrime)))); % no need to normalize as they already are
    
    disp('Length of g prime should be one: ');
    disp(norm(gPrime));
end

function [normalizedVector] = makeNormalizedVector(axis, numDimensions)
    if (axis == 0) % 0 == row
        vector = rand(1, numDimensions) - 0.5;
        normalizedVector = vector / norm(vector);
    else % 1 == column
        vector = rand(numDimensions, 1) - 0.5;
        normalizedVector = vector / norm(vector);
     end
end

% This prints:
% >> hw2_1
% Angle between g and g prime should be one: 
%     1.0000
% 
% Length of g prime should be one: 
%      1