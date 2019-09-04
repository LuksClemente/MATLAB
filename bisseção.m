function [x, iter] = bisection(f, a, b, tol)
    iter = 0;
    x = 0.5*(a + b);
    error = inf;
    while error > tol
        if f(a)*f(x) < 0
            b = x;
        else
            a = x;
        end
        x0 = x;
        x = 0.5*(a + b);
        error = abs(x - x0);
        iter = iter + 1;
        fprintf("n = %3d x = %f error = %f\n", iter, x, error);
    end
return    
