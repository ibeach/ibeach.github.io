---
title: Fractals
permalink: /fractals/
layout: default
---
<h2>Fractals</h2>

This page exhibits some Julia and Mandelbrot set fractals. 
On a mechanical level, the Julia sets are produced by iterating a function $z \mapsto f(z,c)$ at each point, 
where the initial $z$ value is the given point and $c$ is some global constant. For instance, at each point $z_0$ we could iterate $z \to z^2+1$, 
obtaining the sequence $(z_0^2+1,(z_0^2+1)^2+1,\ldots)$.
Conversely, the Mandelbrot set images are produced by iterating a function $z \mapsto f(z,c)$ at each point, 
where now the initial $z_0$ is always zero and the value of $c$ changes at each point. The analogous example is $z \mapsto z^2+z_0$, forming the sequence $(0,z_0,(z_0)^2+z_0,\ldots)$ for each $z_0$.
For both images, each point is coloured according to how fast the iterations escape to infinity. The code for these images can be found <a href='https://github.com/ibeach/ibeach.github.io/tree/master/code/fractals'>here</a>.

<h3>Quadratic Julia Sets</h3>
These Julia sets are produced by iterating functions of the form $z \mapsto z^2+c$.

<table>
<tr> 
	<th>$z\mapsto z^2-0.8+0.156i$</th>
	<th>$z\mapsto z^2+0.285+0.01i$</th>
</tr>
<tr>
	<td><img src="\images\fractals\z2−0.8+0.156i.png"></td>
	<td><img src="\images\fractals\z2+0.285+0.01i.png"></td>
</tr>
</table>

A closer look at a few choice values:

<table>
<tr> 
	<th colspan="4">$z \mapsto z^2 + (x+iy)$</th>
</tr>
<tr> 
	<td></td>
	<td>$y=0.19$</td>
	<td>$y=0.21$</td>
	<td>$y=0.23$</td>
</tr>
<tr> 
	<td>$x=0.39$</td>
	<td><img src="\images\fractals\constant_table\z2+0.39+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table\z2+0.39+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table\z2+0.39+0.23i.png"></td>
</tr>
<tr> 
	<td>$x=0.41$</td>
	<td><img src="\images\fractals\constant_table\z2+0.41+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table\z2+0.41+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table\z2+0.41+0.23i.png"></td>
</tr>
<tr> 
	<td>$x=0.43$</td>
	<td><img src="\images\fractals\constant_table\z2+0.43+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table\z2+0.43+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table\z2+0.43+0.23i.png"></td>
</tr>
</table>

<h3>Quadratic Mandelbrot Set</h3>

Here we have the Mandelbrot set of the quadratic function $z \mapsto z^2 + c$ instead.

<table>
<tr> 
	<th>$z \mapsto z^2 + c$</th>
</tr>
<tr>
	<td><img src="\images\fractals\mandelbrot.png"></td>
</tr>
</table>

Unsurprisingly, the Mandelbrot and Julia sets are closely related. Watch the corresponding Julia set change as we take a diagonal slice through the Mandelbrot set below, following the red dot.

<table>
<tr> 
	<th>A Diagonal Slice of the Mandelbrot Set</th>
</tr>
<tr>
	<td><img src="\images\fractals\julia_mandelbrot_comp.gif"></td>
</tr>
</table>

<h3>Cosh and Sinh Julia Sets</h3>

Other functions, like $\cosh(z)$ and $\sinh(z)$ , also make beautiful Julia sets.

<table>
	<tr>
		<th>$z \mapsto\cosh(z)-0.9i$</th>
		<th>$z \mapsto\cosh(z)+0.4+0.6i$</th>
	</tr>
	<tr> 
		<td><img src="\images\fractals\cosh(z)-0.9i.png"></td>
		<td><img src="\images\fractals\cosh(z)+0.4+0.6i.png"></td>
	</tr>
</table>

<table>
	<tr>
		<th> The $z \mapsto\cosh(z)-c$ Julia Set for $c$ Varying in Time</th>
	</tr>
	<tr> 
		<td><img src="\images\fractals\cosh(z)_0_in_params.gif"></td>
	</tr>
</table>

<h3>The Burning Ship</h3>

Here is the so-called Burning Ship, which is the Mandelbrot set corresponding to $z \mapsto (\|Re(z)\|+i\|Im(z)\|)^2+c$.

<table>
<tr>
	<th>The Burning Ship</th>
	<th> Zoomed in at (-1.762,-0.028)</th>
</tr>
<tr> 
	<td><img src="\images\fractals\burning_ship.png"></td>
	<td><img src="\images\fractals\burning_ship_zoom.png"></td>
</tr>
</table>

<h3>Newton's Method</h3>

Newton's method provides a way of finding the zeros of a function $f$-- by iterating $z \mapsto z - f'(z)/f(z)$, $z$ will approach a zero of $f$. 
If $f$ has several zeros, the location of the initial point determines which zero it will converge to. 
In the following images, each point is coloured with hue corresponding to the zero it converges to and with value (darkness/lightness) corresponding to the speed of convergence.

<table>
	<tr>
		<th>$z \mapsto z^2-1$</th>
		<th>$z \mapsto z^3-1$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_1_0_-1.png"></td>
		<td><img src="\images\fractals\newton_1_0_0_-1.png"></td>
	</tr>
	<tr>
		<th>$z \mapsto z^4-1$</th>
		<th>$z \mapsto z^5-1$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_1_0_0_0_-1.png"></td>
		<td><img src="\images\fractals\newton_1_0_0_0_0_-1.png"></td>
	</tr>
</table>

Here are some animations of the effect of perturbing $z \mapsto z^3-1$, where $k$ varies in time from -1 to 1.
<table>
	<tr>
		<th>$z \mapsto z^3+k$</th>
		<th>$z \mapsto z^3+kx-1$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_order_three_constant_term_video.gif"></td>
		<td><img src="\images\fractals\newton_order_three_linear_term_video.gif"></td>
	</tr>
	<tr>
		<th>$z \mapsto z^3+kx^2-1$</th>
		<th>$z \mapsto kz^3-1$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_order_three_quadratic_term_video.gif"></td>
		<td><img src="\images\fractals\newton_order_three_cubic_term_video.gif"></td>
	</tr>
</table>

You can also do non-polynomial functions, and control the darkness of a pixel by the speed of convergence of the associated point (in this case, taken mod 2 to produce dark bands).

<table>
	<tr>
		<th>$z \mapsto \cosh(z)-1$</th>
		<th>$z \mapsto \sin(z)$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\newton_cubic_method_speed_cosh-1.png"></td>
		<td><img src="\images\fractals\newton_cubic_method_speed_sine.png"></td>
	</tr>
</table>
