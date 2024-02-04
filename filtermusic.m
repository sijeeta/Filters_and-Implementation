load noisyMusic.mat;
N = 21; % filter order
b = ones(1,N)/N; % filter coefficients

% initialize the output signal y
y = zeros(size(z));

% loop over each sample of noisy music
for n = 1:length(z)
    sum = 0;
    for k = 0:N-1
        if n-k > 0 % check if the index is valid
            sum = sum + b(k+1)*z(n-k);% k+1 to account for 0
        end
    end
    % assign the sum to the output signal y
    y(n) = sum;
end

% Listen to the filtered signal
soundsc(y);
