part2();

function part2
    numDimensions = 100;
    f = makeNormalizedVector(1, numDimensions);
    g = makeNormalizedVector(1, numDimensions);
    A = g * f'; % outer product
    
    fPrime = makeNormalizedVector(1, numDimensions);
    disp('Cosine of the angle between f and f prime:');
    disp(cos(acos(dot(f, fPrime)))); % no need to normalize as they already are
    
    afPrime = A * fPrime;
    disp('Length of A * f prime:');
    disp(norm(afPrime));
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
% >> hw2_2
% Cosine of the angle between f and f prime:
%     0.0345
% 
% Length of A * f prime:
%     0.0345

