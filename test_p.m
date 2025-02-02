for j=2:15 
    chfsub = ['chf2db/chf201'; 'chf2db/chf202';'chf2db/chf203'; 'chf2db/chf204'; 'chf2db/chf205';'chf2db/chf206'; 'chf2db/chf207';'chf2db/chf208'; 'chf2db/chf209'; 'chf2db/chf210'];
    nsrsub = ['nsr2db/nsr001'; 'nsr2db/nsr002';'nsr2db/nsr003'; 'nsr2db/nsr004'; 'nsr2db/nsr005';'nsr2db/nsr006'; 'nsr2db/nsr007';'nsr2db/nsr008'; 'nsr2db/nsr009'; 'nsr2db/nsr010'];
    for i=1:size(chfsub,1)
        chf(i) = bubbleEntropy(ann2rr(chfsub(i,:),'ecg'),j);
    end
    for i=1:size(nsrsub,1)
        nsr(i) = bubbleEntropy(ann2rr(nsrsub(i,:),'ecg'),j);
    end
    [h, p] = ttest2(nsr, chf);
    p_value(j) = p;
    disp(j)
end
 %%
plot(j,p_value,'.', 'Marker','O', 'Color','r', 'MarkerSize',10);
xlabel('Embedding dimension (m)');
ylabel('p-value');
disp('END');

