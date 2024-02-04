# Moving Average Filter Implementation

## Description
This repository contains MATLAB code to implement a moving average filter using convolution. The moving average filter is commonly used in signal processing to smooth out noisy signals and remove high-frequency components.

## Input
The input noisy music file is uploaded "noisyMusic.m"

## a) Basic Convolution Formula Used 
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
- - The MATLAB code is attached in file filtermusic.m

This implementation provides a simple and effective way to apply a moving average filter to noisy signals, smoothing out fluctuations and revealing underlying trends.

## b)MATLAB Builtin `Conv` function
- The above code can be simplied using built in  convolution function called "conv".
- The expression is given by just: output = conv(input(z), filter kernel (h)).
- The MATLAB code is attached in file filterconv.m

## c)Filter Implemention from scratch for IIR filter
## Description:
This repository contains MATLAB code to implement a digital IIR filter using a difference equation. The filter is designed to process noisy signals and produce a filtered output.

## Implementation Details:
- **Filter Type:**
  - This filter is an IIR (Infinite Impulse Response) filter. The output y[n] depends on both the input values and the previous values of the output, creating a feedback loop. Hence, the filter has an infinite impulse response.
- **Difference Equation:**
  - The filter operation is described by the difference equation:
    \[ y[n] = 1.2035y[n-1] - 0.7228y[n-2] + 0.1452y[n-3] + 0.0468x[n] + 0.1403x[n-1] + 0.1403x[n-2] + 0.0468x[n-3] \]
- **Z-Transform:**
  - The difference equation can be represented in the z-domain using the z-transform. This allows us to find the transfer function \( H(z) \) of the filter, which relates the input \( X(z) \) to the output \( Y(z) \). In the z-domain, convolution is represented as multiplication.
- **Filter Coefficients:**
  - Two sets of coefficients, `a` and `b`, are defined in the code. These coefficients determine the behavior of the filter.
- **Filtering Operation:**
  - For each sample `n` in the input signal `z`:
    - Two sums are computed:
      - `sum_b`: The sum of the past 3 samples of the input signal multiplied by the coefficients `b`.
      - `sum_a`: The sum of the past 3 samples of the output signal multiplied by the coefficients `a`.
    - The difference of sum_b and sum_a is assigned to the output signal `y` at sample `n`.
- **Listening to Filtered Signal:**
  - The `soundsc` function is used to play the filtered signal, allowing users to listen to the result.
 
## d) MATLAB Builtin function Filter

 The `filter` function is a powerful tool for processing signals and can be used to implement various types of filters, including FIR (Finite Impulse Response) and IIR (Infinite Impulse Response) filters.

## Implementation Using `filter` Function:
- MATLAB's `filter` function allows you to implement digital filters using filter coefficients and input signals.
- The function syntax is as follows: `output_signal = filter(b, a, input_signal)`.
  - `b` represents the coefficients of the input signal.
  - `a` represents the coefficients of the previous values of the output signal.
  - `input_signal` is the original noisy signal that you want to filter.
  - `output_signal` is the filtered signal obtained after applying the filter.
Example:
   load noisyMusic.mat; % Load the noisy music signal
   output_signal = filter(b, a, noisyMusic);




