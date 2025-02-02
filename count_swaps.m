% Input: an embedded timeserie
% Output: a vector containing the number of swaps used by bubbleSort to
% order each embedded vector
function out = count_swaps(serie)
    m = size(serie,1);
    x = serie(:,1)';
    [sorted, nswaps] = bubbleSort(x);
    out = [nswaps];
    for i=2:size(serie,2)
        index = find(sorted==serie(1,i-1));
        index = index(1);
        nswaps = nswaps - index + 1;
        x = swap(sorted,index);
        x = [x(2:end), serie(m,i)];
        [sorted, new_nswaps] = quicklySort(x);
        nswaps = nswaps + new_nswaps;
        out = [out, nswaps];
    end
return

