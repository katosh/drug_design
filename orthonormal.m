function Q = orthonormal(X, P)
    Q(:,1) = X(:,1) / norm(X(:,1));
    for i=2:length(X(1,:))
        otherparts = zeros(length(Q),1);
        for k=1:i-1
            otherparts = (Q(:,k)'*P*X(:,i)) * Q(:,k) + otherparts;
        end
        Q(:,i) = X(:,i) - otherparts;
        Q(:,i) = Q(:,i) / sqrt(Q(:,i)'*P*Q(:,i));
    end
end
