function []=poly(x,y)
    for i=x:y;
        y1=i^3-3*i+4;
        y2=3*i^2-3;
        disp([y1,y2])
    end
endfunction
