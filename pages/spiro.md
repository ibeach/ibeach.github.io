---
title: Spirographs
permalink: /spiro/
layout: default
---
<h2>Spirographs</h2>

A spirograph is a popular drawing toy that is easy to emulate on a computer. For any parameters $a,r\in[0,1]$ and $t\in\mathbb{R}$, a spirograph draws the curve paremeterized by

$$x(t) = (1 - r)\cos(t) + ar\cos(\frac{1 - r}{r}t)$$

$$y(t) = (1 - r)\sin(t) - ar\sin(\frac{1 - r}{r}t)$$

Overlaying these curves for a variety of choices of $a$ and $r$ produces a nice effect.

<table>
<tr>
	<td><img src="\images\spiro\spiro_10.png"></td>
	<td><img src="\images\spiro\spiro_11.png"></td>
</tr>
<tr>
	<td><img src="\images\spiro\spiro_12.png"></td>
	<td><img src="\images\spiro\spiro_13.png"></td>
</tr>
<tr>
	<td><img src="\images\spiro\spiro_14.png"></td>
	<td><img src="\images\spiro\spiro_15.png"></td>
</tr>
</table>

<table>
<tr>
	<td><img src="\images\spiro\spiro_1.png"></td>
	<td><img src="\images\spiro\spiro_2.png"></td>
	<td><img src="\images\spiro\spiro_3.png"></td>
</tr>
<tr>
	<td><img src="\images\spiro\spiro_4.png"></td>
	<td><img src="\images\spiro\spiro_5.png"></td>
	<td><img src="\images\spiro\spiro_6.png"></td>
</tr>
<tr>
	<td><img src="\images\spiro\spiro_7.png"></td>
	<td><img src="\images\spiro\spiro_8.png"></td>
	<td><img src="\images\spiro\spiro_9.png"></td>
</tr>
</table>

Similar images can be made with this simple MATLAB code snippet.

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
