function y=filterfirlp(h,x)
% Implementation of FIR Direct Form structure (Normal Form)
% [y] = filterfirdf(b,a,x)
M = length(h)-1; h = reshape(h,1,M+1);
Lx = length(x); x = [zeros(M,1);x(:)];
Ly = Lx+M; y = zeros(1,Ly);

if mod(M, 2)==0
    if h(1:1:M/2+1) == h(M+1:-1:M/2+1)
        disp("Type I");
        for n = M+1:Ly
            y(n) = h(1:M/2)*(x(n:-1:n-M/2+1) + x(n-M:1:n-M/2-1)) + h(M/2+1)*x(n-M/2);
        end
        y = y(M+1:Ly);
    elseif h(1:1:M/2+1) == -h(M+1:-1:M/2+1)
        disp("Type III");
        for n = M+1:Ly
            y(n) = h(1:M/2)*(x(n:-1:n-M/2+1) - x(n-M:1:n-M/2-1)) + h(M/2+1)*x(n-M/2);
        end
        y = y(M+1:Ly);
    else
        disp("Error");
    end 
else
    if h(1:1:(M+1)/2) == h(M+1:-1:(M+1)/2+1)
        disp("Type II");
        for n = M+1:Ly
            y(n) = h(1:(M+1)/2)*(x(n:-1:n-(M+1)/2+1) + x(n-M:1:n-(M+1)/2));
        end
        y = y(M+1:Ly);
    elseif h(1:1:(M+1)/2) == -h(M+1:-1:(M+1)/2+1)
        disp("Type IV");
        for n = M+1:Ly
            y(n) = h(1:(M+1)/2)*(x(n:-1:n-(M+1)/2+1) - x(n-M:1:n-(M+1)/2));
        end
        y = y(M+1:Ly);
    else
        disp("Error"); 
    end
    
end
