function [  ] = p10( mu, N )

    [y,yq1,yq2,yq3,yq4,yq5,yq6,yq7,yq8,yq9,yq10] = p4(N);
    [z,zq1,zq2,zq3,zq4,zq5,zq6,zq7,zq8,zq9,zq10] = p9(mu,N);
    close all;
    
    samples = 0:1/(N-1):1;
    pdf_y = exp(-samples);
    plot(pdf_y);
    title('Y PDF');
    
    figure;
    subplot(2,5,1);
    cdfplot(yq1 / max(yq1));
    title('Y quantized @ L=2');
    subplot(2,5,2);
    cdfplot(yq2 / max(yq2));
    title('Y quantized @ L=4');
    subplot(2,5,3);
    cdfplot(yq3 / max(yq3));
    title('Y quantized @ L=8');
    subplot(2,5,4);
    cdfplot(yq4 / max(yq4));
    title('Y quantized @ L=16');
    subplot(2,5,5);
    cdfplot(yq5 / max(yq5));
    title('Y quantized @ L=32');
    
    subplot(2,5,6);
    cdfplot(zq1 / max(zq1));
    title('Z quantized @ L=2');
    subplot(2,5,7);
    cdfplot(zq2 / max(zq2));
    title('Z quantized @ L=4');
    subplot(2,5,8);
    cdfplot(zq3 / max(zq3));
    title('Z quantized @ L=8');
    subplot(2,5,9);
    cdfplot(zq4 / max(zq4));
    title('Z quantized @ L=16');
    subplot(2,5,10);
    cdfplot(zq5 / max(zq5));
    title('Z quantized @ L=32');
    
    figure;
    subplot(2,5,1);
    cdfplot(yq6 / max(yq6));
    title('Y quantized @ L=64');
    subplot(2,5,2);
    cdfplot(yq7 / max(yq7));
    title('Y quantized @ L=128');
    subplot(2,5,3);
    cdfplot(yq8 / max(yq8));
    title('Y quantized @ L=256');
    subplot(2,5,4);
    cdfplot(yq9 / max(yq9));
    title('Y quantized @ L=512');
    subplot(2,5,5);
    cdfplot(yq10 / max(yq10));
    title('Y quantized @ L=1024');
    
    subplot(2,5,6);
    cdfplot(zq6 / max(zq6));
    title('Z quantized @ L=64');
    subplot(2,5,7);
    cdfplot(zq7 / max(zq7));
    title('Z quantized @ L=128');
    subplot(2,5,8);
    cdfplot(zq8 / max(zq8));
    title('Z quantized @ L=256');
    subplot(2,5,9);
    cdfplot(zq9 / max(zq9));
    title('Z quantized @ L=512');
    subplot(2,5,10);
    cdfplot(zq10 / max(zq10));
    title('Z quantized @ L=1024');
end

