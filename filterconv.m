load noisyMusic.mat;
N = 21; % filter order
h = ones(1,N)/N; % filter coefficients

% initialize the output signal y
y = zeros(size(z));

y = conv(h,z);%convolution

% Listen to the filtered signal
soundsc(y);
