function [y,yq1,yq2,yq3,yq4,yq5,yq6,yq7,yq8,yq9,yq10] = p4( N )
    y = p2(N);   
    yq1 = p3(y,1) * max(y);
    yq2 = p3(y,2) * max(y);
    yq3 = p3(y,3) * max(y);
    yq4 = p3(y,4) * max(y);
    yq5 = p3(y,5) * max(y);
    yq6 = p3(y,6) * max(y);
    yq7 = p3(y,7) * max(y);
    yq8 = p3(y,8) * max(y);
    yq9 = p3(y,9) * max(y);
    yq10 = p3(y,10) * max(y);
    close all;
    
    subplot(2,5,1);
    plot(yq1);
    title('L=2');
    subplot(2,5,2);
    plot(yq2);
    title('L=4');
    subplot(2,5,3);
    plot(yq3);
    title('L=8');
    subplot(2,5,4);
    plot(yq4);
    title('L=16');
    subplot(2,5,5);
    plot(yq5);
    title('L=32');
    subplot(2,5,6);
    plot(yq6);
    title('L=64');
    subplot(2,5,7);
    plot(yq7);
    title('L=128');    
    subplot(2,5,8);
    plot(yq8);
    title('L=256');    
    subplot(2,5,9);
    plot(yq9);
    title('L=512');    
    subplot(2,5,10);
    plot(yq10);
    title('L=1024');
end

