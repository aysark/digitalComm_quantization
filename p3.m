function [yq] = p3(y,n)
% p3(p2(100),2)
    close all;

    y_norm = y / max(y);
    L = 2^n;
    % assuming amp interval [0,1]
    Vpp = 1;
    q = Vpp / (L-1); %see eq 2.19 from book

    %yq = floor( (y_norm - min(y_norm))/q) * q + min(y_norm);
    yq = floor( (y_norm)/q) * q;
    subplot(2,2,1);
    hist(y_norm);
    title('Y Normalized Histogram');

    subplot(2,2,2);
    plot(y_norm);
    title('Y Normalized Plot');

    subplot(2,2,3);
    hist(yq);
    title('Histogram YQ');

    subplot(2,2,4);
    plot(yq);
    title('Plot YQ');

end
