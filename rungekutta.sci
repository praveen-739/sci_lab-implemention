function []=rk(x0,y0,xn,h)
    while(x0<=xn)
        k1=h*f(x0,y0);
        k2=h*f(x0+h/2,y0+k1/2);
        k3=h*f(x0+h/2,y0+k2/2);
        k4=h*f(x0+h,y0+k3);
        k=(k1+2*k2+2*k3+k4)/6;
        y1=y0+k;
        y0=y1;
        x0=x0+h;
    end
    printf("value at x=%f is %f",xn,y1);        
endfunction

function dx=f(x,y)
    dx=x+y;
endfunction
