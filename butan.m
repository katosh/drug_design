P = importdata('butan50.txt');
[eigenvectors eigenvalues] = eig(P);

% just 5
eigve = eigenvectors(:,1:3);
eigva = eigenvalues(1:3);

ort = orthonormal(eigve, P);
corners = pccap(P);
