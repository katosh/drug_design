function corners = pccap(X)
    d = 3; % simplex dimension
    n = length(X);
    corners=zeros(d,n);
    for i=1:d
        olddist = 0;
        for j=1:length(X')
            newdist = 0;
            for k=1:d
                newdist = newdist + norm(corners(k,:)-X(j,:));
            end
            if olddist < newdist
                olddist = newdist;
                corners(i,:) = X(j,:);
            end
        end
    end
end
