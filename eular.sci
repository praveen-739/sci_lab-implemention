function []=eular(x0,y0,xn,h)
    while(x0<=xn)
        disp(x0,y0);
        y1=y0+(h*f(x0,y0));
        x0=x0+h;
        y0=y1;
    end
    printf("value at x=0.1 is %f",y1);
    
endfunction

function dx=f(x,y)
    dx=(y-x)/(y+x);
endfunction
