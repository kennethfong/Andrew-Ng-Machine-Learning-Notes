function out = test()
% MAPFEATURE Feature mapping function to polynomial features
%
%   MAPFEATURE(X1, X2) maps the two input features
%   to quadratic features used in the regularization exercise.
%
%   Returns a new feature array with more features, comprising of 
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
%
%   Inputs X1, X2 must be the same size
%
X1 = [2; 2; 2];
X2 = [3; 3; 3];
degree = 3;
out = ones(6);
for i = 1:degree
    for j = 0:i
    	disp("i:");
    	disp(i);
    	disp("j:");
    	disp(j);
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
        disp( out(:, end+1))
    end
end

end