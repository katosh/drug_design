P = importdata('butan50.txt');

% [eigenvectors eigenvalues] = eig(P);
[lev lew] = eig(P);
[rev rew] = eig(P');

% just 3
eigve = eigenvectors(:,1:3);
eigva = eigenvalues(1:3);

d = diag(eigenvectors(:,1));

ort = orthonormal(eigve, d);
corners = pccap(ort);

x = ort * (corners^-1);
plot(x)
