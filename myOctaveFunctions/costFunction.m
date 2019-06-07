function j = costFunction (X,y,theta)

m = size(X,1);
predictions = X*theta;
sqrtErrors = (predictions-y).^2;
j = 1/(2*m) * sum(sqrtErrors);

endfunction
