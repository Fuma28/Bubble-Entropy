function swapped = swap(a, i)
    swapped = a;
    for j=i:-1:2
        temp = swapped(j);
        swapped(j) = swapped(j-1);
        swapped(j-1) = temp;
    end
return