function [xm0]=bisect(xl,xu)
    p=poly([0.0003993,0,-0.165,3],'x','c');
    e=10;
    xm0=(xl+xu)/2;
    fxu=horner(p,xu);
    fxm=horner(p,xm0);
    du=fxm*fxu;
    if du<0 then
        xl=xm0;
    else
        xu=xm0;
    end
    while e>5
        xmm=(xl+xu)/2;
        fxu=horner(p,xu);
        fxm=horner(p,xmm);
        du=fxm*fxu;
        if du<0
            xl=xmm;
        else
            xu=xmm;            
        end
    e=abs((xmm-xm0)/xmm)*100;
    printf("e=%f,cm=%f\n",e,xmm);
    xm0=xmm
    end
endfunction
