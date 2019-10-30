function [x,iter] = NewtonRaphson(F, DF, x0, tol, maxiter)
    iter = 0;
    error = inf;
    
    fprintf("-----RESULTADOS-----");
    
    while error > tol && iter < maxiter
        iter = iter + 1;
        x = x0 - ((DF(x0)^-1)*F(x0));
        error = sqrt(sum(abs(x - x0)));
        x0 = x;
        fprintf("\n\nNumero de iteracoes: %3d \nX: %f \nErro: %f \n", iter, x, error);
    end
    if error > tol
        x = NaN;
    end
    fprintf("\n-----FIM DO PROGRAMA-----");
return
