function [  ] = p11( mu, N )

    [y,yq1,yq2,yq3,yq4,yq5,yq6,yq7,yq8,yq9,yq10] = p4(N);
    [z,zq1,zq2,zq3,zq4,zq5,zq6,zq7,zq8,zq9,zq10] = p9(mu,N);
    close all;
    zs = [zq1,zq2,zq3,zq4,zq5,zq6,zq7,zq8,zq9,zq10];
    ys = [];
    for k=1:10
        z = zs(:,k);
        ys = [ys ((((1+mu).^abs(z)) - 1) / mu) .* sign(z)];
    end
    
    subplot(2,5,1);
    plot(ys(:,1));
    title('Z uncompand @ L=2');
    subplot(2,5,2);
    plot(ys(:,2));
    title('Z uncompand @ L=4');
    subplot(2,5,3);
    plot(ys(:,3));
    title('Z uncompand @ L=8');
    subplot(2,5,4);
    plot(ys(:,4));
    title('Z uncompand @ L=16');
    subplot(2,5,5);
    plot(ys(:,5));
    title('Z uncompand @ L=32');
    
    subplot(2,5,6);
    plot(yq1);
    title('Y quantized @ L=2');
    subplot(2,5,7);
    plot(yq2);
    title('Y quantized @ L=4');
    subplot(2,5,8);
    plot(yq3);
    title('Y quantized @ L=8');
    subplot(2,5,9);
    plot(yq4);
    title('Y quantized @ L=16');
    subplot(2,5,10);
    plot(yq5);
    title('Y quantized @ L=32');
    
    figure;
    subplot(2,5,1);
    plot(ys(:,6));
    title('Z uncompand @ L=64');
    subplot(2,5,2);
    plot(ys(:,7));
    title('Z uncompand @ L=128');
    subplot(2,5,3);
    plot(ys(:,8));
    title('Z uncompand @ L=256');
    subplot(2,5,4);
    plot(ys(:,9));
    title('Z uncompand @ L=512');
    subplot(2,5,5);
    plot(ys(:,10));
    title('Z uncompand @ L=1024');
    
    subplot(2,5,6);
    plot(yq6);
    title('Y quantized @ L=64');
    subplot(2,5,7);
    plot(yq7);
    title('Y quantized @ L=128');
    subplot(2,5,8);
    plot(yq8);
    title('Y quantized @ L=256');
    subplot(2,5,9);
    plot(yq9);
    title('Y quantized @ L=512');
    subplot(2,5,10);
    plot(yq10);
    title('Y quantized @ L=1024');
    
    figure;
    subplot(2,5,1);
    cdfplot(ys(:,1));
    title('Z uncompand @ L=2');
    subplot(2,5,2);
    cdfplot(ys(:,2));
    title('Z uncompand @ L=4');
    subplot(2,5,3);
    cdfplot(ys(:,3));
    title('Z uncompand @ L=8');
    subplot(2,5,4);
    cdfplot(ys(:,4));
    title('Z uncompand @ L=16');
    subplot(2,5,5);
    cdfplot(ys(:,5));
    title('Z uncompand @ L=32');
    
    subplot(2,5,6);
    cdfplot(yq1);
    title('Y quantized @ L=2');
    subplot(2,5,7);
    cdfplot(yq2);
    title('Y quantized @ L=4');
    subplot(2,5,8);
    cdfplot(yq3);
    title('Y quantized @ L=8');
    subplot(2,5,9);
    cdfplot(yq4);
    title('Y quantized @ L=16');
    subplot(2,5,10);
    cdfplot(yq5);
    title('Y quantized @ L=32');
    
    figure;
    subplot(2,5,1);
    cdfplot(ys(:,6));
    title('Z uncompand @ L=64');
    subplot(2,5,2);
    cdfplot(ys(:,7));
    title('Z uncompand @ L=128');
    subplot(2,5,3);
    cdfplot(ys(:,8));
    title('Z uncompand @ L=256');
    subplot(2,5,4);
    cdfplot(ys(:,9));
    title('Z uncompand @ L=512');
    subplot(2,5,5);
    cdfplot(ys(:,10));
    title('Z uncompand @ L=1024');
    
    subplot(2,5,6);
    cdfplot(yq6);
    title('Y quantized @ L=64');
    subplot(2,5,7);
    cdfplot(yq7);
    title('Y quantized @ L=128');
    subplot(2,5,8);
    cdfplot(yq8);
    title('Y quantized @ L=256');
    subplot(2,5,9);
    cdfplot(yq9);
    title('Y quantized @ L=512');
    subplot(2,5,10);
    cdfplot(yq10);
    title('Y quantized @ L=1024');
end

