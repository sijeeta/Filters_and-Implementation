# Moving Average Filter Implementation

## Description
This repository contains MATLAB code to implement a moving average filter using convolution. The moving average filter is commonly used in signal processing to smooth out noisy signals and remove high-frequency components.

## Convolution Formula Used
The moving average filter implemented in this code is based on the convolution operation, which computes the output signal y[n] by convolving the input signal z[n] with the filter kernel h[n]. The convolution operation is defined as follows:

y[n] = ∑_{k=0}^{N-1} h[k] * z[n-k]

where:
- y[n] is the output signal at sample n.
- z[n] is the input signal at sample n.
- h[k] is the filter kernel at index k.
- N is the length of the filter kernel.

The code iterates over each sample n of the input signal z and computes the weighted sum of past samples using the filter kernel h. This sum represents the filtered output at sample n.

## Implementation Details
- The code initializes the filter kernel h with a length of N = 21 and assigns each element a value of 1/N. This ensures that the moving average filter weights each past sample equally.
- It then iterates over each sample n of the input signal z and computes the weighted sum of past samples using the convolution formula.
- The filtered output is stored in the output signal y.
- Finally, the code plays the filtered signal using the soundsc function, allowing the user to listen to the result.

This implementation provides a simple and effective way to apply a moving average filter to noisy signals, smoothing out fluctuations and revealing underlying trends.


