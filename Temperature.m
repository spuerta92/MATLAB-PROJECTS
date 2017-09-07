function [] = Temperature(Farenheit)
    Celcius = (5/9)*(Farenheit - 32);
    disp(['The Temperature in Farenheit: ' num2str(Farenheit)])
    disp(['The Temperature in Celcius: ' num2str(Celcius)])
end

