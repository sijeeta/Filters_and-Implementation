load noisyMusic.mat;
% define the filter coefficients
a = [1 -1.2035 0.7228 -0.1452];
b = [0.0468 0.1403 0.1403 0.0468];

% initialize the output signal y
y = zeros(size(z));

y = filter(b,a,z);

soundsc(y);
