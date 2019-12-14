function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
disp(theta);

temp0 = 0;
temp1 = 0;


for iter = 1:num_iters,

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    

    tempt0 = 0;
    tempt1 = 0;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
   
    for i = 1:m,
      tempt0 = tempt0 + ((theta(1,1) + theta(2,1) *X(i,2)) - y(i, 1));
      tempt1 = tempt1 + ((theta(1,1) + theta(2,1) *X(i,2)) - y(i, 1))*X(i,2);
    endfor;
    theta(1,1) = theta(1,1) - (alpha *(1/m) * tempt0);
    theta(2,1) = theta(2,1) - (alpha *(1/m) * tempt1);

    

end;


end;
