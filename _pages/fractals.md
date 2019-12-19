---
title: Fractals
permalink: /fractals/
---

<h3>On This Page:</h3> 
Julia Sets and Mandelbrot Sets

<h3>Explanation:</h3> 
On the most mechanical level, these images of Julia sets are produced by iterating functions $z \to f(z,c)$ at each point, 
where the initial $z$ value is the given point and $c$ is some global constant. For instance, at every $z$ value we could iterate $z \to z^2+1$, 
obtaining the sequence $(z^2+1,(z^2+1)^2+1,\cdots)$ at each $z$.
Conversely, the Mandelbrot set images are produced by iterating functions $z \to f(z,z_0)$ at each point, 
where now $z_0$ is the point and the initial $z$ value is 0. Our analagous example is $z \to z^2+z_0$, obtaining the sequence $(0,z_0,(z_0)^2+z_0,\cdots)$ for each $z_0$.
For both types, each point is coloured according to how fast the iterations converge (or diverge, as the case may be).

<h3>Learn More:</h3>
<ul>
<li><a href ="http://mathworld.wolfram.com/JuliaSet.html">WolframMathWorld: Julia Sets</a></li>
<li><a href ="http://mathworld.wolfram.com/MandelbrotSet.html">WolframMathWorld: Mandelbrot Sets</a></li>
<li><i>Computers, Pattern, Chaos and Beauty Paperback</i> by Clifford A. Pickover</li>
</ul>

<h3>Code:</h3>
<a href ="https://github.com/ibeach/ibeach.github.io/tree/master/code/fractals">/code/fractals</a>

<h3>Quadratic Julia Sets</h3>
This image is produced by iterating $z \to z^2+c$, where the initial $z$ value is the point in the image and $c$ is a constant.

<table>
<tr> 
	<th>$z^2-0.8+0.156i$</th>
	<th>$z^2+0.285+0.01i$</th>
</tr>
<tr>
	<td><img src="\images\fractals\z.^2+-0.8+0.156i.png"></td>
	<td><img src="\images\fractals\z.^2+0.285+0.01i.png"></td>
</tr>
</table>
	
Take a look at the effect of the constant on the Julia set.

{% include quadratic_table.md %}

Looks a lot like the Mandelbrot set! That's no coincidence. 
Watch the corresponding Julia set change as we take a diagonal slice through the Mandelbrot set below (see the red dot).

<table>
<tr> 
	<th>A Diagonal Slice of the Mandelbrot Set</th>
</tr>
<tr>
	<td><img src="\images\fractals\julia_mandelbrot_comp.gif"></td>
</tr>
</table>

A closer look at a few choice values:

{% include quadratic_table_small.md %}

The pictures below are Julia sets represented by polynomial functions of various degree.

<table>
<tr> 
	<th>Degree 4</th>
	<th>Degree 5</th>
	<th>Degree 6</th>
	<th>Degree 7</th>
</tr>
<tr> 
	<td><img src="\images\fractals\poly_four.png"></td>
	<td><img src="\images\fractals\poly_five.png"></td>
	<td><img src="\images\fractals\poly_six.png"></td>
	<td><img src="\images\fractals\poly_seven.png"></td>
</tr>
</table>

Here is an animation of zooming in at the point 0.001643721971153 − 0.822467633298876i. 
Since gifs can only use 256 colours, the colouration of each pixel is taken mod 256.
<table>
<tr>
	<th>The Mandelbrot Set at (0.001643721971153, 0.822467633298876)</th>
</tr>
<tr>
	<td><img src="\images\fractals\mandelbrot_zoom.gif"></td>
</tr>
</table>

Compare to <a href="https://upload.wikimedia.org/wikipedia/commons/0/07/Fractal-zoom-1-03-Mandelbrot_Buzzsaw.ogv">this</a> much more sophisticated video at the same point.

<h3>Cosh and Sinh</h3>

Other holomorphic functions, like cosh and sinh, also make beautiful Julia Sets.

<table>
	<tr>
		<th>$\cosh(z)-0.9i$</th>
		<th>$\cosh(z)+0.4+0.6i$</th>
	</tr>
	<tr> 
		<td><img src="\images\fractals\(cmath.cosh(z))+complex(0,-0.9).png"></td>
		<td><img src="\images\fractals\(cmath.cosh(z))+complex(0.4,0.6).png"></td>
	</tr>
</table>

<table>
	<tr>
		<th> The $\cosh(z)-c$ Julia Set for Varying $c$</th>
	</tr>
	<tr> 
		<td><img src="\images\fractals\cosh(z)_0_in_params.gif"></td>
	</tr>
</table>
	
<h3>Cosh and Abs</h3>

Combining holomorphic and non-holomorphic functions can produce some very interesting results.

<table>
<tr>
	<th>$cosh(z)+(0.1+0.9i)|z|$</th>
</tr>
<tr>
	<td><img src="\images\fractals\cosh(z)+complex(0.1,0.9).abs(z).png"></td>
</tr>
</table>

The three below are produced by iterating $z \to \cosh(z)+c\|z\|$ at each point, where c is the location of the point.

<table>
<tr>
	<th>$\cosh(z)+c|z|$</th>
	<th>$\cosh(z)+c|z|$ (zoomed-in)</th>
	<th>$\cosh(z)+c|z|$ (zoomed-in more)</th>
</tr>
<tr> 
	<td><img src="\images\fractals\cosh(z)+abs(z).z0.png"></td>
	<td><img src="\images\fractals\cosh(z)+abs(z).z0_zoom.png"></td>
	<td><img src="\images\fractals\cosh(z)+abs(z).z0_zoom2.png"></td>
</tr>
</table>

{% include cosh_table.md %}

<h3>A Strange Image</h3>

The iterated function here is $z \to c^z z^c$.

<table>
<tr>
	<th>$c^z z^c$</th>
</tr>
<tr> 
	<td><img src="\images\fractals\z0.^(z).z.^(z0).png"></td>
</tr>
</table>

<h3>The Burning Ship</h3>

Here is the so-called Burning Ship, made by iterating $z \to (\|Re(z)\|+i\|Im(z)\|)^2+c$.

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

This is a corresponding Julia set.

<table>
<tr>
	<th>$(|Re(z)|+i|Im(z)|)^2-1.762-0.028i$</th>
	<th> $(|Re(z)|+i|Im(z)|)^2-1.762-0.028i$ (zoomed in)</th>
</tr>
<tr> 
	<td><img src="\images\fractals\burning_ship_julia_-1.762-0.028i.png"></td>
	<td><img src="\images\fractals\burning_ship_julia_zoom.png"></td>
</tr>
</table>

Here is an animation of zooming in at the point 0.2955+0i. Again, the colouration is taken mod 256.

<table>
<tr>
	<th>The Burning Ship at (0.2955,0)</th>
</tr>
<tr>
	<td><img src="\images\fractals\burning_ship_zoom.gif"></td>
</tr>
</table>
	
<h3>Exp</h3>

This is the Mandelbrot set of the function $z \to cze^{z^2}$. 
I like to call this one "the rainbow carp", because the pattern looks like the scales of a fish.
<table>
	<tr>
		<th>$cze^{z^2}$</th>
	</tr>
	<tr>
		<td><img src="\images\fractals\c_exp(z.^2).z.png"></td>
	</tr>
</table>

<h3><a href = "\fractals2">More Fractals</a></h3>