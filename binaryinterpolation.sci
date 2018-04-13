function []=interpolation(t0,vt0,t1,vt1,t2,vt2,t)
    b0=vt0;
    b1=(vt1-vt0)/(t1-t0);
    b2=((vt2-vt1)/(t2-t1)-(vt1-vt0)/(t1-t0))/t2-t0;
    pol=b0+b1*(t-t0)+b2((t-t0)*(t-t1));
    disp(horner(pol,t))
endfunction
