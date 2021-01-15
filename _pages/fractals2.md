---
title: Fractals II
permalink: /fractals2/
---

Here are more fractals (see <a href = "\fractals">previous page</a> for more information).

<h3>Newton's Method</h3>

Newton's method provides a way of finding the zeros of a function $f$: by iterating $z \to z - f'(z)/f(z)$, $z$ will approach a zero of $f$. 
If f has several zeros, the location of the point determines which zero it will converge to. 
In the following images, each point is coloured according to which zero it converges to under Newton's method. 
The hue corresponds to the zero and the value (darkness/lightness) corresponds to the speed of convergence.

<table>
	<tr>
		<th>$z^2-1$</th>
		<th>$z^3-1$</th>
		<th>$z^4-1$</th>
		<th>$z^5-1$</th>
		<th>$z^6-1$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_1_0_-1.png"></td>
		<td><img src="\images\fractals\newton_1_0_0_-1.png"></td>
		<td><img src="\images\fractals\newton_1_0_0_0_-1.png"></td>
		<td><img src="\images\fractals\newton_1_0_0_0_0_-1.png"></td>
		<td><img src="\images\fractals\newton_1_0_0_0_0_0_-1.png"></td>
	</tr>
</table>

Here are some animations of the effect of purturbing $z^3-1$, where $k$ ranges from -1 to 1.
<table>
	<tr>
		<th>$z^3+k$</th>
		<th>$z^3+kx-1$</th>
		<th>$z^3+kx^2-1$</th>
		<th>$kz^3-1$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_order_three_constant_term_video.gif"></td>
		<td><img src="\images\fractals\newton_order_three_linear_term_video.gif"></td>
		<td><img src="\images\fractals\newton_order_three_quadratic_term_video.gif"></td>
		<td><img src="\images\fractals\newton_order_three_cubic_term_video.gif"></td>
	</tr>
</table>

You can also do non-polynomial functions, and control the darkness of a pixel by the speed of convergence of the associated point (in this case, taken mod 2 to produce dark bands).

<table>
	<tr>
		<th>$\cosh(z)-1$</th>
		<th>$\sin(z)$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_cubic_method_speed_cosh-1.png"></td>
		<td><img src="\images\fractals\newton_cubic_method_speed_sine.png"></td>
	</tr>
</table>