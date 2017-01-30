part3();

function part3
    numPairsOptions = [1, 20, 40, 60, 80, 100];
    numDimensions = 100;
    
    for numPairs = 1:length(numPairsOptions) % (5)

        for i = 1:numPairs % (1)
            f = makeNormalizedVector(1, numDimensions);
            g = makeNormalizedVector(1, numDimensions);
            A = g * f'; % outer product
            fSet{i} = f;
            gSet{i} = g;
            ASet{i} = A; % (2)
        end

        connectivityMatrix = ASet{1}; % (3)
        if numPairs > 1
            for i = 2 : numPairs
                connectivityMatrix = connectivityMatrix + ASet{i};
            end
        end

        for i = 1 : numPairs % (4a, 4b, 4c)
            gPrime = A * fSet{i};
            disp('Length of g prime (output):');
            disp(norm(gPrime));

            cosBetween = cos(acos(dot(gSet{i}, gPrime)));
            disp('Angle between g prime and g(i):');
            disp(cosBetween);

            gPrimeLength = norm(gPrime);
            disp('Length of g prime:');
            disp(gPrimeLength);
        end

        for i = 1 : 50 % (4d)
            v = makeNormalizedVector(1,numDimensions);
            product = A * v;
            allProductLengths(i) = norm(product);
            disp('Length of product of A and the new vector:');
            disp(allProductLengths(i));
            
            differenceBetween = abs(norm(v) - norm(product));
            disp('Difference between the new vector and the product of the vector and A');
            disp(differenceBetween);
        end
        
        productLengthsSum = allProductLengths(1); % (4d)
        if numPairs > 1
            for i = 2 : length(allProductLengths)
                productLengthsSum = productLengthsSum + allProductLengths(i);
            end
        end
        averageProductLength = productLengthsSum / length(allProductLengths);
        disp('Average length of product of A and the new vector:');
        disp(averageProductLength);
    end
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

% 
% Code Snippet (Last Bit):
% 
% Length of product of A and the new vector:
%     0.0383
% 
% Difference between the new vector and the product of the vector and A
%     0.9617
% 
% Length of product of A and the new vector:
%     0.0306
% 
% Difference between the new vector and the product of the vector and A
%     0.9694
% 
% Length of product of A and the new vector:
%     0.1870
% 
% Difference between the new vector and the product of the vector and A
%     0.8130
% 
% Average length of product of A and the new vector:
%     0.0780
