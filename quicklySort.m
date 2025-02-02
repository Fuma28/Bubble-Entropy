% Input a vector partially sorted, the unsorted element must be in the last
% position
% Output: the sorted vector and the number of swaps necessary to order it
function [ordered,swaps] = quicklySort(a)
    ordered = a;
    swaps = 0;
    m = size(a,2);
    for i=m:-1:2
        if ordered(i)<ordered(i-1)
            temp = ordered(i);
            ordered(i) = ordered(i-1);
            ordered(i-1) = temp;
            swaps = swaps + 1;
        else
            break
        end
    end
return;