serie = ann2rr('nsr2db/nsr001','ecg');
j = 2:15;
for i=j
    pe(i) = mPeEn(serie,i);
    bE(i) = bubbleEntropy(serie,i);
    re(i) = RpeN(serie,i,2)/log(i);
    cRe(i) = cRpeN(serie,i,2);
    disp(i)
end
plot(j,[pe(2:end); bE(2:end); re(2:end); cRe(2:end)], 'LineWidth',5);
legend('Permutation Entropy', 'bubbleEntropy' ,'Renyi Permutation Entropy' ,'Conditional Renyi Permutation Entropy', 'FontSize',12)
xlabel('Embedding dimension (m)');
ylabel('Entropy')
disp('END');