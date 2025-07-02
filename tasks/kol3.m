A=[5,2,3;8,7,6;3,1,2];
[a,b] = sort(min(A));

diff_res = diff([1:1:5], [])
A=[1,2,3;4,5,6;7,8,9]
[c,d,e]=find(A)

row = find(ismember(A, [4,5,6], 'rows'))

B=[-1,2,3;4,5,6;7,8,-9]
diagonal = diag(B)
sum(diagonal(diagonal>0))

n=3
w = 1:n
v=[w;w;w]
C = randi(n,n)
M = C-v
temp_row=[0,0,0]
row_indexes=find(ismember(M, temp_row, 'rows'))

v1 = vector();
v2 = vector(1);
v3 = vector(2,3);
v4 = vector(4,5,6);

len = norm(v4);

temp=[100:1:200];
sum(temp(mod(temp,2) ~= 0))


scores = randperm(5)
scores = sort(scores)
scores(1)
scores(5)

v = randi(100, 1, 20)
v = sort(v)
m = mean(v)
v(v>m)

M = randi(40, 20)
nnz(M>20)