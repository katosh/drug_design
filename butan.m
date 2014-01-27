P = importdata('butan50.txt');

% [eigenvectors eigenvalues] = eig(P);
[lev lew] = eig(P);
[rev rew] = eig(P');

% just the 3 leading ones
eigve = lev(:,1:3);
eigva = lew(1:3);

d = diag(rev(:,1)/sum(rev(:,1)));

ort = orthonormal(eigve, d);
corners = pccap(ort);

x = ort * (corners^-1);
plot(x)
