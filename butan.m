P = importdata('butan50.txt');
[eigenvectors eigenvalues] = eig(P);
ort = orthonormal(eigenvectors, P);
corners = pccap(ort);
