ptRes = 1000;
numSpiro = 3;
theta = linspace(0, 100*pi, ptRes);

figure(1);
clf(1);
hold on;
for i = 1:numSpiro
	r = rand();
	l = rand();
	x = (1 - r).*cos(theta) + l.*r.*cos(theta.*(1 - r)./r);
	y = (1 - r).*sin(theta) - l.*r.*sin(theta.*(1 - r)./r);    
	plot(x, y, 'Color', rand(1, 3));
end
