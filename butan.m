P = importdata('butan50.txt');
[eigenvectors eigenvalues] = eig(P);

% just 3
eigve = eigenvectors(:,2:4);
eigva = eigenvalues(2:4);

ort = orthonormal(eigve, P);
corners = pccap(ort);

x = ort * (corners^-1);
plot(x)
