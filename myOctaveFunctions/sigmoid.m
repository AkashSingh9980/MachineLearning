function g = sigmoid(z)
  g = zeros(size(2,1));
  g = 1./(1+exp(-1*z));
endfunction
