function []=func(x)
    t=list(1,1.2,1.3,1.5);
    xt=list(1,1.0954,1.1402,1.2247);
    l=list()
    pol=0
    for i=1:4
        l(i)=1;
        for j=1:4
            if(i~=j)
                l(i)=l(i)*((x-t(j))/(t(i)-t(j)));
            end
        end
        pol=pol+xt(i)*l(i);
    end
    disp(pol)
endfunction
