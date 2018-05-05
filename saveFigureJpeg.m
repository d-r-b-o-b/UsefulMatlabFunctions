function saveFigureJpeg(figHandle, savename, res)

% saveFigurePdf(figHandle, savename, res)

set(figHandle, 'windowstyle', 'normal')
set(figHandle, 'paperpositionmode', 'auto')

pp = get(figHandle, 'paperposition');
wp = pp(3);
hp = pp(4);
set(figHandle, 'papersize', [wp hp])
% saveas(gcf, savename, 'pdf')

if nargin < 3
    print(savename, '-djpeg')
else
    print(figHandle, '-djpeg', '-r', num2str(res));
end


