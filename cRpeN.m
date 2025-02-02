% Input: a time serie, the embedding dimension m and the order of the Rènyi
% entropy desired
% Output: the normalized Conditional Permutation Rènyi entropy of the time
% serie
function out = cRpeN(serie,m,a)
    out = (RpeN(serie,m+1,a) - RpeN(serie, m,a))/(log(m+1));
return