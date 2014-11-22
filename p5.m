function [  ] = p5( N )
    
    [y,yq1,yq2,yq3,yq4,yq5,yq6,yq7,yq8,yq9,yq10] = p4(N);
    close all;
    ys = [yq1,yq2,yq3,yq4,yq5,yq6,yq7,yq8,yq9,yq10];
    qe_samples = [];
    for k=1:10
        yq = ys(:,k);
        qe = 0;
        for i=1:N
            qe = qe + (y(i)-yq(i))^2;
        end
        qe_samples = [qe_samples qe];
    end
    figure;
    plot([1:10],qe_samples);
    title('QE vs bits');
end

