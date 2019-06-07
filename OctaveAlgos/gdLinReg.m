>> car_data = load('car.dat');
>> x = car_data(:,1);
>> y = car_data(:,2);
>> m = length(y);
>> figure;
>> plotData(x,y);
>> xlabel('(y)Weight -->','fontsize',14);
>> ylabel('(x)mpg -->','fontsize',14);
>> fprintf("press key to continue...");
press key to continue...>> pause;
>> x = [ones(m,1),x];
>> theta = zeros(2,1);
>> numIter = 1000;
>> alpha = 0.1;
>> J = zeros(numIter,1);
>> for i = 1:numIter
hx = (x*theta).-y;
theta(1) = theta(1) - (alpha/m)*hx'*x(:,1);
theta(2) = theta(2) - (alpha/m)*hx'*x(:,2);
J(i) = 1/(2*m)*sum(hx.^2);
end
>> fprintf('theta(0) = %f , theta(1) = %f\n',theta(1),theta(2));
theta(0) = 36.966249 , theta(1) = -5.570620
>> hold on;
>> plot(x(:,2),x*theta,'r-','linewidth',2);
>> hold off;
>> pause;
>> predict = [1.3,3.6,5.5];
>> hold on;
>> for i=predict
pplot(i,[1, i]*theta, 'g*', 'MarkerSize',14);
legend('Training','Linear Reg','Prediction');
end
error: 'pplot' undefined near line 2 column 1
>> for i=predict
plot(i,[1, i]*theta, 'g*', 'MarkerSize',14);
legend('Training','Linear Reg','Prediction');
end
>> hold off;
>>
