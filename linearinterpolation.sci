function []=inter(to,vto,t1,vt1,t)
    bo=vto;
    b1=(vt1-vto)/(t1-to);
    pol=bo+b1(t-to);
    disp(horner(pol,t))
endfunction
