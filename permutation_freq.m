% Input: a time serie and the embedding dimension m
% Output: a vector containing the frequency of each pattern existing in the
% time serie
function out = permutation_freq(serie,m)
    embedded = embed(serie,m);
    n = size(embedded,2);
    J = zeros(n,m);
    for i=1:n
        J(i,:)=create_J(embedded(:,i)');
    end
    squeezed = zeros(n,1);
    for i=1:n
        squeezed(i) = polyval(J(i,:),10);
    end
    uv = unique(squeezed);
    values = histc(squeezed,uv);
    out = values/sum(values);
return