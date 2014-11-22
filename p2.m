function [ y ] = p2( N )
    % p2(10000)
    close all;
    a = 1;
    samples = 0:1/(N-1):1;
    pdf_y = a*exp(-a*samples);

    x = rand(N,1);
    y = -log(1-x) / a;
    y_norm = y / max(y);

    mean(y)
    var(y)

    subplot(2,2,1);
    hist(x);
    title('Hist X');

    subplot(2,2,2);
    plot(pdf_y);
    title('Y PDF');

    subplot(2,2,3);
    cdfplot(y);
    title('Y CDF');

    subplot(2,2,4);
    plot(y);
    title('Y Plot');
end
