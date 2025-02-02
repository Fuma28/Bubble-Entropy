% Input: a time serie and the embedding dimension m
% Output a matrix containing the vectors of size m obtained embedding the
% time serie
function out = embed(serie, dim)
    out = zeros(dim, size(serie,1) - dim + 1);
    for i=1:dim
        out(i,:) = serie(i:end-(dim-i))';
    end
return