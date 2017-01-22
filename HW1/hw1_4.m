part4();

function part4()
    numPoints = 100000;    
    theta = linspace(0,2*pi,300);
    x = cos(theta);
    y = sin(theta);
    figure;
    plot(x,y) 
    
    hold on
    xValues = rand(1,10000000) * 2 - 1;
    yValues = rand(1,10000000) * 2 - 1;
    scatter(xValues,yValues);
    
    count = 0;
    
    for i = 1 : length(xValues)
        if ((xValues(i).^2 + yValues(i).^2) < 1)
            count = count+1;
        end
    end
    
    disp(count);
end

% With 10,000,000 random points plotted in the graph from y=-1 to y=1 and 
% x=-1 to x=1, 7,854,263 were found to land within the unit circle.
% 
% 4 / PI = 1.27324
% 10,000,000 / 7,854,263 = 1.27319