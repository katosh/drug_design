P = importdata('butan50.txt');
[eigenvectors eigenvalues] = eig(P);

% just 5
eigve = eigenvectors(:,2:4);
eigva = eigenvalues(2:4);

ort = orthonormal(eigve, P);
corners = pccap(P);
