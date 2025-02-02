% Input: a time serie and the embedding dimension m
% Output: the Permutation Entropy time
function out = mPeEn(serie,m)
    p = permutation_freq(serie,m);
    out = 0;
    for i=1:size(p,1)
        out = out + p(i) * log(p(i));
    end
    out = -out;
return