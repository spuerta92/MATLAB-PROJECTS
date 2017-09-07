function [p q] = the_minimum2
         [p q] = fminbnd(@polynom,0,10);
    function f = polynom(x)
             f = 20*x^2 - 200*x + 12;
    end
end

