% Input: a vector
% Output: a vector J in which Ji represent the position that the i-th
% element in the sorted vector had before sorting
function out = create_J(vector)
sorted = sort(vector);
m = size(vector,2);
out = zeros(1,m);
for i=1:m
    out(i) = find(vector==sorted(i),1);
end