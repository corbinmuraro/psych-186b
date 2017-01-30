% (4; I chose Option #2) I wasn't able to get numbers randomly replaced on 
% higher dimension matrices in a time efficient manner, but even with 
% matrices based on 10-dimensional vectors, by replacing half of the matrix
% with zeroes, the average length between a new vector and the connectivity
% matrix doubled.

% With matrices based on 50-dimensional vectors and replacing half of the
% matrix with zeroes, the average length between a new vecotr and the
% connectivity matrix quadrupled.

part4();

function part4
    numPairs = 100;
    numDimensions = 50;

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
    
%     numCells = numDimensions * numDimensions;
    for i = 1 : 1000    
        row = round(rand(numDimensions-1).*rand(1) + 1);
        col = round(rand(numDimensions-1).*rand(1) + 1);
        connectivityMatrix(row,col) = 0;
    end
    
    M = randi([0 1], numDimensions,numDimensions);
    connectivityMatrix = connectivityMatrix * M;
    
    for i = 1 : numPairs % (4a, 4b, 4c)
        gPrime = connectivityMatrix * fSet{i};
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
        product = connectivityMatrix * v;
        allProductLengths(i) = norm(product);
        disp('Length of product of connectivityMatrix and the new vector:');
        disp(allProductLengths(i));

        differenceBetween = abs(norm(v) - norm(product));
        disp('Difference between the new vector and the product of the vector and connectivityMatrix');
        disp(differenceBetween);
    end

    productLengthsSum = allProductLengths(1); % (4d)
    if numPairs > 1
        for i = 2 : length(allProductLengths)
            productLengthsSum = productLengthsSum + allProductLengths(i);
        end
    end
    averageProductLength = productLengthsSum / length(allProductLengths);
    disp('Average length of product of connectivityMatrix and the new vector:');
    disp(averageProductLength);
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