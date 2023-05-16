clc;
clear all;
% Choose model (linear, exponential, power, or growth)
[x y] = start();
[yfit coeffs r2 model] = choose_model(x,y);
plot_data(x, y, yfit, model, coeffs, r2);