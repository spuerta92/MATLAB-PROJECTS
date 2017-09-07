% Sebastian Puerta Hincapie
% Mathematical Plots
 
%% Task 1
clear; clc; format short; format loose;
disp('==== Task 1 ====')
disp('Finding the roots of the equation analytically')
f = [1 -6 9 -4]
r = roots(f)
x = linspace(-5,5,100);
g = polyval(f,x);

figure(1);
whitebg('black')
plot(x,g,'cyan','LineWidth',2), xlabel('X-Axis'), ylabel('Y-Axis'),
title('Analytically Plot'), legend('g'), grid on


%% Task 2
clear; clc; format('short','g'); format loose;
disp('==== Task 2 ====')
disp('Using the Gauss-Seidel method to obtain the roots')

i = 1;
x(i) = 0;

error_x(i) = 9999;

while error_x(i) >= 0.01
    x(i+1) = -(1/9)*(x(i)^3 - 6*x(i)^2 - 4);
    
    error_x(i+1) = abs((x(i+1)-x(i))/x(i+1))*100;
    
    i = i + 1;
end

disp('            x        % error');
disp(' ')
disp([x',error_x'])

% The plot
x = linspace(0,4.5,100);
y = -(1/9)*(x.^3 - 6*x.^2 - 4);
z = x;

figure(1);

plot(x,y,x,z,'LineWidth',2), grid on, xlabel('x-axis'), ylabel('y-axis'),
title('Gauss-Seidel Plot'), legend('y','z')

%% Task 3
clear; clc; format('short','g'), format loose;
disp('==== Task 3 ====')
disp('Task 2 with an acceleration factor from 1.1 to 1.9')

% Allow a few extra seconds for the program to run to completion

i = 1;
x(i) = 0;

error_x(i) = 9999;

while error_x(i) >= 0.01
    for a = linspace(1.1,1.9,i)
        x(i+1) = (-(1/9)*(x(i)^3 - 6*x(i)^2 - 4));
        x(i+1) = a * x(i+1);
        error_x(i+1) = a*abs((x(i+1)-x(i))/x(i+1))*100;
    end
    
    i = i + 1;
    
end

disp('            x        % error');
disp(' ');
disp([x',error_x'])

%% Task 4
clear; clc; format short; format loose;
disp('==== Task 4 ====')
disp('Using the Newton-Raphson method  to obtain the roots')

x0 = 0.1;      % initialization
i = 0;  % number of iterations

while abs(fx(x0)) > 1e-6
    x1 = x0 - fx(x0)/fxprime(x0);
    x0 = x1    
    i = i + 1;
end

iterations = i

% To check values
x = 0.1
y = x^3 - 6*x^2 + 9*x - 4
g = 3*x^2 - 12*x + 9





