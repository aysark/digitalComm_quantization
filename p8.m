function [ z ] = p8(mu, N)
    
    y = p2(N);
    close all;
    x = (0:1/(N-1):1);
    
    z = (log(1 + mu*abs(y)) / log(1+mu)) .* sign(y);
    
    subplot(2,2,1);
    plot(y);
    title('Normalized Input Y');
    
    subplot(2,2,2);
    plot(z);
    title('Nonuniform Quantizer Z');
    
    subplot(2,2,3);
    cdfplot(y);
    title('Normalized Input Y (CDF)');
    
    subplot(2,2,4);
    cdfplot(z);
    title('Nonuniform Quantizer Z (CDF)');
end

