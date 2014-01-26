P = importdata('butan50.txt');
[eigenvectors eigenvalues] = eig(P);

% just 5
eigve = eigenvectors(:,1:5);
eigva = eigenvalues(1:5);

ort = orthonormal(eigve, P);
corners = pccap(ort);
