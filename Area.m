function A = Area(r)
    global V
    V = 10;
    A = pi*r*sqrt((r^2)+(((V*3)/(pi*r^2))^2));
%     disp(['Area = ' num2str(A)]);
end

