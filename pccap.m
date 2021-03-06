function corners = pccap(X)
    d = length(X(1,:)); % numer of simplex verts
    n = length(X(1,:));
    corners=zeros(d,n);
    for i=1:d
        olddist = 0;
        for j=1:length(X(:,1))
            newdist = 0;
            for k=1:i
                newdist = newdist + norm(corners(k,:)-X(j,:));
            end
            if olddist < newdist
                olddist = newdist;
                corners(i,:) = X(j,:);
            end
        end
    end
end
