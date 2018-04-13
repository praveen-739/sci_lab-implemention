function []=newton(x0,start,endd)
    for x=start:0.0000001:endd;
        y=x^5-7;
        y1=5*x^4;
        z=x0+(y/y1);
       disp([x,z]) 
    end
endfunction
