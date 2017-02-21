% homework 4 ? corbin muraro

% UNCOMMENT THE FUNCTION CORRESPONDING TO THE PROBLEM YOU WANT TO RUN:
% nineteen();
% twenty();
% twentyone();
% twentytwo();
% twentythree();
% twentysix();
% twentyseven();
% twentyeight();
% twentynine();

function nineteen
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 0.1;
    LENGTH = 2;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end % make inhibitory weights %

    % initialize state vector %
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector %
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);
        state_vector = new_state_vector;
    end

    % display code %
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 100]);
    ylim([50 100]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end

function twenty
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 0.2;
    LENGTH = 2;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end % make inhibitory weights %

    % initialize state vector %
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector %
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);
        state_vector = new_state_vector;
    end

    % display code %
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 100]);
    ylim([50 100]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end

function twentyone
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 0.5;
    LENGTH = 2;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end % make inhibitory weights %

    % initialize state vector %
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector %
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);
        state_vector = new_state_vector;
    end

    % display code %
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 100]);
    ylim([50 100]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end

function twentytwo
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 1;
    LENGTH = 2;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end % make inhibitory weights %

    % initialize state vector %
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector %
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);
        state_vector = new_state_vector;
    end

    % display code %
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 100]);
    ylim([50 100]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end

function twentythree
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 2;
    LENGTH = 2;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end % make inhibitory weights %

    % initialize state vector %
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector %
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);
        state_vector = new_state_vector;
    end

    % display code %
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 100]);
    ylim([50 100]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end

function twentysix
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 1.0;
    LENGTH = 10;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end
    
    % make inhibitory weights %
    for i = 1 : DIMENSIONALITY
        for j = 1 : DIMENSIONALITY
            if i == j
                inhibitory_weights(i, j) = 0;
            end
        end
    end

    % build state vector  
    initial_state_vector = zeros(1, DIMENSIONALITY) * 10;
    for i = 17 : 20
        initial_state_vector(i) = initial_state_vector(i - 1) + 10;
    end
    for i = 21 : 24
        initial_state_vector(i) = initial_state_vector(i - 1) - 10;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector %
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);
        state_vector = new_state_vector;
    end

    % display code %
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 50]);
    ylim([0 50]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end

function twentyseven
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 1.0;
    LENGTH = 10;
    WINNER_TAKE_ALL = true;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end
    
    % make inhibitory weights
    if (WINNER_TAKE_ALL == true)
        for i = 1 : DIMENSIONALITY
            for j = 1 : DIMENSIONALITY
                if i == j
                    inhibitory_weights(i, j) = 0;
                end
            end
        end
    end

    % initialize state vector
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    if (WINNER_TAKE_ALL == true) % have to use different initial state vector
        initial_state_vector = ones(1, DIMENSIONALITY) * 10;
        for i = 17 : 20
            initial_state_vector(i) = initial_state_vector(i - 1) + 10;
        end
        for i = 21 : 24
            initial_state_vector(i) = initial_state_vector(i - 1) - 10;
        end
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);
        state_vector = new_state_vector;
    end

    % display code
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 50]);
    ylim([0 50]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end

function twentyeight
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 1.0;
    LENGTH = 10;
    WINNER_TAKE_ALL = true;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end
    
    % make inhibitory weights
    if (WINNER_TAKE_ALL == true)
        for i = 1 : DIMENSIONALITY
            for j = 1 : DIMENSIONALITY
                if i == j
                    inhibitory_weights(i, j) = 0;
                end
            end
        end
    end

    % initialize state vector
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    if (WINNER_TAKE_ALL == true) % have to use different initial state vector
        initial_state_vector = ones(1, DIMENSIONALITY) * 10;
        initial_state_vector(14) = 20;
        initial_state_vector(15) = 30;
        initial_state_vector(16) = 20;

        initial_state_vector(19) = 20;
        initial_state_vector(20) = 30;
        initial_state_vector(21) = 40;
        initial_state_vector(22) = 30;
        initial_state_vector(23) = 20;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);

        state_vector = new_state_vector;
    end

    % display code
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 50]);
    ylim([0 50]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end


function twentynine
    % initialize constants
    DIMENSIONALITY = 100;
    HALF_DIMENSIONALITY = DIMENSIONALITY / 2;
    QUARTER_DIMENSIONALITY = DIMENSIONALITY / 4;
    ITERATIONS = 50;
    EPSILON = 0.1;
    UPPER_LIMIT = 75;
    LOWER_LIMIT = 0;
    MAX_INHIBITON = 2.0;
    LENGTH = 10;
    WINNER_TAKE_ALL = true;

    % build array of inhibitory weights
    inhibitory_weights = zeros(DIMENSIONALITY);

    for i = 1 : HALF_DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-(i-1) / LENGTH);
    end
    for i = (HALF_DIMENSIONALITY + 1) : DIMENSIONALITY
        inhibitory_weights(1,i) = ...
        -MAX_INHIBITON * exp(-((DIMENSIONALITY+1)-i) / LENGTH);
    end

    % shift elements right in each successive row of weights
    for i = 1 : (DIMENSIONALITY - 1)
        for j = 1 : (DIMENSIONALITY - 1)
            inhibitory_weights(i+1, j+1) = inhibitory_weights(i, j);
            inhibitory_weights(i+1, 1) = inhibitory_weights(i, DIMENSIONALITY);
        end
    end
    
    % make inhibitory weights
    if (WINNER_TAKE_ALL == true)
        for i = 1 : DIMENSIONALITY
            for j = 1 : DIMENSIONALITY
                if i == j
                    inhibitory_weights(i, j) = 0;
                end
            end
        end
    end

    % initialize state vector
    i = 1;
    initial_state_vector = zeros(1, DIMENSIONALITY);
    for i = i : QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 10;
    end
    for i = i : 3 * QUARTER_DIMENSIONALITY
        initial_state_vector(i) = 40;
    end
    for i = i : DIMENSIONALITY
        initial_state_vector(i) = 10;
    end

    if (WINNER_TAKE_ALL == true) % have to use different initial state vector
        initial_state_vector = ones(1, DIMENSIONALITY) * 10;
        initial_state_vector(14) = 20;
        initial_state_vector(15) = 30;
        initial_state_vector(16) = 20;

        initial_state_vector(19) = 20;
        initial_state_vector(20) = 30;
        initial_state_vector(21) = 40;
        initial_state_vector(22) = 30;
        initial_state_vector(23) = 20;
    end

    state_vector = initial_state_vector;
    % compute inhibited state vector
    error = 0.0;
    new_state_vector = zeros(1, DIMENSIONALITY);
    for i = 1 : ITERATIONS
        for j = 1 : DIMENSIONALITY
            error = initial_state_vector(j) ... 
                + dot(inhibitory_weights(j,:), state_vector) - state_vector(j);
            new_state_vector(j) = state_vector(j) + EPSILON * error;
        end
        new_state_vector = limit_state_vector(new_state_vector);

        state_vector = new_state_vector;
    end

    % display code
    figure;
    plot(initial_state_vector,1:DIMENSIONALITY,'+k','displayname','Initial'); hold on;
    plot(state_vector,1:DIMENSIONALITY,'*k', 'displayname', 'Comparison');
    xlabel('Neurons');
    ylabel('Firing rate');
    xlim([0 50]);
    ylim([0 50]);
    legend('show');

    function [final_state_vector] = limit_state_vector(init_state_vector)
        final_state_vector = init_state_vector;
        for i = 1 : DIMENSIONALITY
            if final_state_vector(i) > UPPER_LIMIT
                final_state_vector(i) = UPPER_LIMIT;
            end
            if final_state_vector(i) < LOWER_LIMIT
                final_state_vector(i) = LOWER_LIMIT;
            end
        end
    end
end