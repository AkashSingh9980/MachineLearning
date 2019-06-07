>> crick_data = load('data.dat');
>> x = data(:,2)
x =

   20.000
   16.000
   19.800
   18.400
   17.100
   15.500
   14.700
   17.100
   15.400
   16.300
   15.000
   17.200
   16.000
   17.000
   14.400

>> y = data(:,1)
y =

   88.600
   71.600
   93.300
   84.300
   80.600
   75.200
   69.700
   82.000
   69.400
   83.300
   79.600
   82.600
   80.600
   83.500
   76.300

>> plotData(x,y);
>> xlabel('Rate of Chirping');
>> ylabel('Temp in Farenheit');
>> m = length(x);
>> X = [ones(m,1) x];
>> hold on;
>> theta = (pinv(X'*X))*X'*y;
>> plot(X(:,2),X*theta,'r-');
>> legend('Training Data','Linear Regression');
>> title('Rate of Cricket Chirping Based on Temp');
>> hold off;
>>
