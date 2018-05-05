function f = shadedErrorBars(x, y, y_sem)

% x = tm;
% y = Y(1,:);
% y_sem = Ysem(1,:);

top = y + y_sem;
bot = y - y_sem;

yy = [top bot(end:-1:1)];
xx = [x   x(end:-1:1) ];

f = fill(xx, yy, 'r');
set(f, 'linestyle', 'none')
