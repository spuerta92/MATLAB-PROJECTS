function A = the_area(r)
    global V;
    A = pi*r*sqrt(r^2 + (3*V / pi*r^2));
end
