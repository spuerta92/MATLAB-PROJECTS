function [m val] = the_minimum
   
    [m val] = fminbnd(@poly_nomial,0,10);
end