function [x,vm,vc]=amp_mod(em,ec,fm,fc,fs)
    t=0:1/fs:1;
    vm=em*sin(2*%pi*fm*t);
    vc=ec*sin(2*%pi*fc*t);
    x=(ec+em*sin(2*%pi*fm*t).*sin(2*%pi*fc*t));
    subplot(3,1,1);
    plot(vm);
    title('modulated signal')
    subplot(3,1,2);
    plot(vc);
    title('carrier signal')
    subplot(3,1,3)
    plot(x);
    title('amplitude modulated signal')
endfunction
