part3();

function part3
    numPairsOptions = [20, 40, 60, 80];
    numDimensions = 100;
        
    errorThreshold = 0.0001;
    oscillateInput = false;
    randomSelection = true;    

    for numPairsIndex = 1:length(numPairsOptions)
        numPairs = numPairsOptions(numPairsIndex);
        
        fprintf('\nNumber of pairs: %d\n', numPairs);

        for i = 1:numPairs
            f = makeNormalizedVector(1, numDimensions);
            g = makeNormalizedVector(1, numDimensions);
            A = g * f'; % outer product
            fSet{i} = f;
            gSet{i} = g;
            ASet{i} = A;
        end
        
        learned = zeros(1,numPairs);
        converged = false;
        count = 1;
        
        integer = 1;
        while (~converged)
            if randomSelection
                integer = randi(numPairs);
            else
                if integer > numPairs
                    integer = 1;
                end
            end
            
            learned(integer) = 1;
            if count == 1
                A = ASet{integer};
                newError = 0;
            else
                A = A + ASet{integer};
            end
            
            gPrime = A * fSet{integer};
            errorScalar = 1 / (fSet{integer}' * fSet{integer});
            error = g - gPrime;

            if oscillateInput
                fprintf('Error: %f\n', norm(error));
            end
            
            if ((abs(norm(error) - newError) / norm(error)) < errorThreshold) && (sum(learned) == numPairs)
                fprintf('Error: %f\n', ((abs(norm(error) - newError) / norm(error))));
                fprintf('Error threshold: %f\n', errorThreshold);
                fprintf('Number of trials: %d\n', count);
                converged = true;
            end
            
            newError = norm(error);
            deltaA = errorScalar * error * f';
            A = A + deltaA;
            count = count + 1;
            integer = integer + 1;
        end
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