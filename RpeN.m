% Input: a time serie, the embedding dimension m and the order of the Rènyi
% entropy desired
% Output: the not-normalized Rènyi Permutation Entropy of the time
% serie
function out = RpeN(serie,m,a)
    p = permutation_freq(serie,m);
    out = 0;
    for i=1:size(p,1)
        out = out + p(i)^a;
    end
    out = 1/(1-a)*log(out);
return