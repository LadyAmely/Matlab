clear variables
A = randi(2,2);
row_to_find=[2,2];
ismember(A,row_to_find,'rows')
clear variables
A = [1,2,3;4,5,6;7,8,9];
v = [7,8,9];
B=[;];

for i=1:size(A,1)
    B(end+1,:)=v;
end

C = A-B
indexes = find(C==0)

V=[1,2,3,4,5,6]
mean(V)
sum(V(2:2:end))
V(V<4)=[]

slowo='lubie lubienie'
slowo(slowo=='u')='w'
slowo(slowo=='e')='h'

P0=k_punkt();
P1=k_punkt(1);
P2=k_punkt(1,2);
P3=k_punkt(1,2,3);
P4=k_punkt(1,2,3,4);
P5=k_punkt(P2);
P3+P4