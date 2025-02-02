% Input: a time series and the embedding dimension m
% Output: a vector containing the frequencies of the number of swaps necessary to sort each vector of
% the time serie embedded at dimension m
function out = swap_freq(serie,m)
    embedded = embed(serie,m);
    nSwaps = count_swaps(embedded);
    uv = unique(nSwaps);
    hist = histc(nSwaps,uv);
    out = hist/(size(serie,1)-m+1);
return