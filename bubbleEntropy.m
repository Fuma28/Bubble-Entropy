% Input: a time series and the embedding dimension m
% Output: the entropy calculated with the bubbleEntropy method of the timeseries at dimension m
function out = bubbleEntropy(serie, m)
    p_m = swap_freq(serie,m);
    H_m = -log(sum(p_m.^2));

    p_m1 = swap_freq(serie,m + 1);
    H_m1 = -log(sum(p_m1.^2));
    
    out = (H_m1 - H_m)/log((m+1)/(m-1));
return