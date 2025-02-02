% Input: a vector
% Output: the orderd vector and the number of swaps necessary to order it
function [ordered,swaps] = bubbleSort(a)
    ordered = a;
    swaps = 0;
    swapped = true;
    n = size(a,2) - 1;
    while(swapped)
        swapped = false;
        for i=1:n
            if ordered(i)>ordered(i+1)
                temp = ordered(i);
                ordered(i) = ordered(i+1);
                ordered(i+1) = temp;
                swaps = swaps + 1;
                swapped = true;
            end
        end
        n = n-1;
    end
return;