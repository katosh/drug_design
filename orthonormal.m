function Q = orthonormal(X, P)
    Q(:,1) = X(:,1) / norm(X(:,1));
    done = zeros(length(Q),1);
    for i=2:length(X(1,:))
        done = (Q(:,i-1)'*P*X(:,i)) * Q(:,i-1) + done;
        Q(:,i) = X(:,i) - done;
        Q(:,i) = Q(:,i) / norm(Q(:,i));
    end
end
