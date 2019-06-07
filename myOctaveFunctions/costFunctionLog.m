function [j,gradient] = costFunctionLog(X,y,theta,lambda)
  m = size(X,1);
  j =  0;
  gradient = zeros(size(theta));
  predictions = sigmoid(X*theta);
  j =(sum(-y'*log(predictions) - (1-y)'*log(1-predictions)))/m + lambda/(2*m) * sum(theta);
  gradient = (1/m)*X'*(predictions-y);
  
  
endfunction
