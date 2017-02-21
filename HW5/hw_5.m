% corbin muraro ? homework 5

hw5();

function hw5
    
    % archival data table
    fSet{1} = [1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{2} = [1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{3} = [1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{4} = [1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{5} = [1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{6} = [1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{7} = [1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{8} = [1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{9} = [1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{10} = [1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{11} = [1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{12} = [1 1 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0];
    fSet{13} = [1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{14} = [1 1 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0];
    fSet{15} = [1 1 1 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{16} = [1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
    fSet{17} = [1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{18} = [1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
    fSet{19} = [1 0 0 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    fSet{20} = [1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

    % vector responsible for mapping planet of origin
    gSet{1} = [1 0 0 0];
    gSet{2} = [1 0 0 0];
    gSet{3} = [1 0 0 0];
    gSet{4} = [1 0 0 0];
    gSet{5} = [1 0 0 0];
    gSet{6} = [0 1 0 0];
    gSet{7} = [0 1 0 0];
    gSet{8} = [0 1 0 0];
    gSet{9} = [0 1 0 0];
    gSet{10} = [0 1 0 0];
    gSet{11} = [0 0 1 0];
    gSet{12} = [0 0 1 0];
    gSet{13} = [0 0 1 0];
    gSet{14} = [0 0 1 0];
    gSet{15} = [0 0 1 0];
    gSet{16} = [0 0 0 1];
    gSet{17} = [0 0 0 1];
    gSet{18} = [0 0 0 1];
    gSet{19} = [0 0 0 1];
    gSet{20} = [0 0 0 1];

    % noisy data for classification   
    hSet{1} = [0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{2} = [0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
    hSet{3} = [0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
    hSet{4} = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{5} = [0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{6} = [0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{7} = [1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{8} = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{9} = [1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{10} = [0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0];
    hSet{11} = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{12} = [0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{13} = [0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{14} = [0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0];
    hSet{15} = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{16} = [0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{17} = [0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{18} = [0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{19} = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    hSet{20} = [0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

    numDimensions = 49;
    numPairs = 20;
    threshold = 0.0001;
    oscillate_output = false;

    for i = 1 : numPairs
        % set vector mean to zero
        fSet{i} = fSet{i} - sum(fSet{i}) / numDimensions;
        gSet{i} = gSet{i} - sum(gSet{i}) / 4;
        hSet{i} = hSet{i} - sum(hSet{i}) / numDimensions;

        % normalize vectors
        fSet{i} = (1 / norm(fSet{i})) * fSet{i};
        gSet{i} = (1 / norm(gSet{i})) * gSet{i};
        hSet{i} = (1 / norm(hSet{i})) * hSet{i};

        % transpose vectors
        fSet{i} = fSet{i}';
        gSet{i} = gSet{i}';
        hSet{i} = hSet{i}';
    end

    for i = 1 : numPairs
        f = fSet{i};
        g = gSet{i};
        a = g * f';
        Aset{i} = a;
    end

    learned = zeros(1,numPairs);
    converged = false;
    count = 1;
    i = 1;
    while (~converged)
        i = randi(numPairs);

        learned(i) = 1;
        if count == 1
            A = Aset{i};
            lastError = 0;
        else
            A = A + Aset{i};
        end

        g_prime = A * fSet{i};
        errorScalar = 1 / (fSet{i}' * fSet{i});
        error = g - g_prime;

        if (abs(norm(error) - lastError) / norm(error)) < threshold
            if sum(learned) == numPairs
                fprintf('Error threshold (%f) met\n', threshold);
                fprintf('Number of trials: %d\n', count);
                converged = true;
            end

        end
        lastError = norm(error);
        deltaA = errorScalar * error * f';
        A = A + deltaA;
        count = count + 1;
        i = i + 1;
    end
    fprintf('\n\n');
    disp('Output for Origin');
    for i = 1 : numPairs
        setI{i} = A * hSet{i};
        temp = setI{i} * (1/norm(setI{i}));
        maxV = max(temp);
        for j = 1 : 4
            if temp(j) == maxV
                newTemp(j) = 1;
            else
                newTemp(j) = 0;
            end
        end
        fprintf('%d: [%d, %d, %d, %d]\n', i, newTemp(1), newTemp(2), newTemp(3), newTemp(4));
        setL{i} = newTemp;
    end
            
    % klingon / romulan / antarean / federation
    jSet{1} = [1, 0, 0, 0];
    jSet{2} = [0, 1, 0, 0];
    jSet{3} = [0, 0, 1, 0];
    jSet{4} = [0, 0, 0, 1];

    % hostile / alert / friendly
    kSet{1} = [1, 0, 0]; 
    kSet{2} = [0, 1, 0];
    kSet{3} = [0, 0, 1];
    kSet{4} = [0, 0, 1];

    % set mean of vector elements to 0
    for i = 1 : 4
        jSet{i} = jSet{i} - (1/4);
        kSet{i} = kSet{i} - (1/3);
        jSet{i} = (1/norm(jSet{i})) * jSet{i};
        kSet{i} = (1/norm(kSet{i})) * kSet{i};
        jSet{i} = jSet{i}';
        kSet{i} = kSet{i}';
        a2 = kSet{i} * jSet{i}';
        setA2{i} = a2;
    end

    % build new A
    A2 = setA2{i};
    for i = 2 : 4
        A2 = A2 + setA2{i};
    end
    fprintf('\n\n');
    disp('Output for Required Action'); 
    
    for i = 1 : numPairs
        
        setM{i} = A2 * setL{i}';
        temp = setM{i} * (1/norm(setM{i}));
        maxV = max(temp);
        
        for j = 1 : 3
            if temp(j) == maxV
                newTemp(j) = 1;
            else
                newTemp(j) = 0;
            end
        end
        fprintf('%d: [%d, %d, %d]\n', i, newTemp(1), newTemp(2), newTemp(3));
    end
end
