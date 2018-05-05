function saveFigureTiff(figHandle, savename, res)

% saveFigurePdf(figHandle, savename)
if exist('res') ~= 1
    res = 300;
end
set(figHandle, 'windowstyle', 'normal')
set(figHandle, 'paperpositionmode', 'auto')

pp = get(figHandle, 'paperposition');
wp = pp(3);
hp = pp(4);
set(figHandle, 'papersize', [wp hp])
% saveas(gcf, savename, 'pdf')

print(savename, '-dtiff', ['-r' num2str(res)])
