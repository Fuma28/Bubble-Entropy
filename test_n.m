serie = ann2rr('nsr2db/nsr001','ecg');
j = [40,100,200,500,1000,1500,2500,5000,10000,20000,40000];
for i=1:size(j,2)
    subserie = serie(1:j(i));
    pe(i) = mPeEn(subserie,10);
    bE(i) = bubbleEntropy(subserie,10);
    re(i) = RpeN(subserie,10,2)/log(10);
    cRe(i) = cRpeN(subserie,5,2);
    disp(i)
end
plot(j,[pe; bE; re; cRe], 'LineWidth',5);
legend('Permutation Entropy', 'bubbleEntropy' ,'Renyi entropy' ,'Conditional Renyi entropy','FontSize',12)
xlabel('Signal lenght (N)');
ylabel('Entropy')
disp('END');