function []=eular(x0,y0,xn,h)
    #differentiating function x0 to xn
    while(x0<=xn)
        
        y1=(y0+h*f(x0,y0));
        y0=y1;
        x0=x0+h;
    end
    printf("value at x=%f is %f",xn,y1);
endfunction


function dx=f(x,y)
    dx=(y-x)/(y+x);
endfunction
