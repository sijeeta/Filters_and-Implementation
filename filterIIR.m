load noisyMusic.mat;
a = [1 -1.2035 0.7228 -0.1452]; %y coefficients
b = [0.0468 0.1403 0.1403 0.0468];%x coefficients

% initialize the output signal y
y = zeros(size(z));

% loop over each sample of z
for n = 1:length(z)
    sum_b = 0; %compute the sum for y part
    for k = 0:3
        if n-k > 0
            sum_b = sum_b + b(k+1)*z(n-k);
        end
    end

    sum_a = 0;% compute the sum for x part
    for k = 1:3
        if n-k > 0
            sum_a = sum_a + a(k+1)*y(n-k);
        end
    end
    y(n) = sum_b - sum_a;%difference equation by subtracting the values
end

% Listen to the filtered signal
soundsc(y);