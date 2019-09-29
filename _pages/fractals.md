---
title: Fractals
permalink: /fractals/
---

<b>On This Page:</b> 
Julia Sets and Mandelbrot Sets

<b>Explanation:</b> 
On the most mechanical level, these images of Julia sets are produced by iterating functions z -> f(z,c) at each point, 
where the initial z value is the given point and c is some global constant. For instance, at every z value we could iterate z -> z^2+1, obtaining the sequence {z^2+1,(z^2+1)^2+1,...} at each z.
Conversely, the Mandelbrot set images are produced by iterating functions z -> f(z,z_0) at each point, 
where now z_0 is the point and the initial z value is 0. Our analagous example is z -> z^2+z_0, obtaining the sequence {0,z_0,(z_0)^2+z_0,...} for each z_0.
For both types, each point is coloured according to how fast the iterations converge (or diverge, as the case may be).

<b>Learn More:</b>
<ul>
<li><a href ="http://mathworld.wolfram.com/JuliaSet.html">WolframMathWorld: Julia Sets</a></li>
<li><a href ="http://mathworld.wolfram.com/MandelbrotSet.html">WolframMathWorld: Mandelbrot Sets</a></li>
<li><i>Computers, Pattern, Chaos and Beauty Paperback</i> by Clifford A. Pickover</li>
</ul>

<b>Code:</b>
<a href ="https://github.com/ibeach/ibeach.github.io/tree/master/code/hyperbolic">/code/fractals</a>

<h3>Quadratic Julia Sets</h3>
This image is produced by iterating z -> z^2+c, where the initial z value is the point in the image and c is a constant.

<table>
<tr> 
	<th>z^2-0.8+0.156i</th>
	<th>z^2+0.285+0.01i</th>
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
<br>
<img src="\images\fractals\julia_mandelbrot_comp.gif">
<br>
A closer look at a few choice values:

<table>
<tr> 
	<th>Imaginary Part \ Real Part </th>
	<th>0.17</th>
	<th>0.19</th>
	<th>0.21</th>
	<th>0.23</th>
	<th>0.25</th>
	<th>0.27</th>
</tr>
<tr> 
	<td>0.37</td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.37+0.17i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.37+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.37+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.37+0.23i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.37+0.25i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.37+0.27i.png"></td>
</tr>
<tr> 
	<td>0.39</td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.39+0.17i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.39+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.39+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.39+0.23i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.39+0.25i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.39+0.27i.png"></td>
</tr>
<tr> 
	<td>0.41</td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.41+0.17i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.41+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.41+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.41+0.23i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.41+0.25i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.41+0.27i.png"></td>
</tr>
<tr> 
	<td>0.43</td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.43+0.17i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.43+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.43+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.43+0.23i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.43+0.25i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.43+0.27i.png"></td>
</tr>
<tr>
	<td>0.45</td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.45+0.17i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.45+0.19i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.45+0.21i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.45+0.23i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.45+0.25i.png"></td>
	<td><img src="\images\fractals\constant_table_zoom\z.^2+0.45+0.27i.png"></td>
</tr>
</table>

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

<h3>Cosh and Sinh</h3>

<table>
<tr>
	<th>cosh(z)-0.9i</th>
	<th>cosh(z)+0.4+0.6i</th>
</tr>
<tr> 
	<td><img src="\images\fractals\(cmath.cosh(z))+complex(0,-0.9).png"></td>
	<td><img src="\images\fractals\(cmath.cosh(z))+complex(0.4,0.6).png"></td>
</tr>
</table>
	
Combining holomorphic and non-holomorphic functions can produce some very interesting results.

<table>
<tr>
	<th>cosh(z)+(0.1+0.9i)*|z|</th>
</tr>
<tr>
	<td><img src="\images\fractals\cosh(z)+complex(0.1,0.9).abs(z).png"></td>
</tr>
</table>

{% include cosh_table.md %}

<h3>The Mandelbrot Set</h3>

Here is an animation of zooming in at the point 0.001643721971153 − 0.822467633298876i. 
Since gifs can only use 256 colours, the colouration of each pixel is taken mod 256.
<br>
<img src="\images\fractals\mandelbrot_zoom.gif">
<br>
Compare to <a href="https://upload.wikimedia.org/wikipedia/commons/0/07/Fractal-zoom-1-03-Mandelbrot_Buzzsaw.ogv">this</a> much more sophisticated video at the same point.

<h3>The Burning Ship</h3>

Here is the so-called Burning Ship, made by iterating z -> (\|Re(z)\|+i\|Im(z)\|)^2+c.

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
	<th>(\|Re(z)\|+i\|Im(z)\|)^2-1.762-0.028i</th>
	<th> (\|Re(z)\|+i\|Im(z)\|)^2-1.762-0.028i (zoomed in)</th>
</tr>
<tr> 
	<td><img src="\images\fractals\burning_ship_julia_-1.762-0.028i.png"></td>
	<td><img src="\images\fractals\burning_ship_julia_zoom.png"></td>
</tr>
</table>

Here is an animation of zooming in at the point 0.2955+0i. Again, the colouration is taken mod 256.
<br>
<img src="\images\fractals\burning_ship_zoom.gif">
<br>

<h3>More Cosh Fractals</h3>
The three below are produced by iterating z -> cosh(z)+|z|*c at each point, where c is the location of the point.

<table>
<tr> 
	<td><img src="\images\fractals\cosh(z)+abs(z).z0.png"></td>
	<td><img src="\images\fractals\cosh(z)+abs(z).z0_zoom.png"></td>
	<td><img src="\images\fractals\cosh(z)+abs(z).z0_zoom2.png"></td>
</tr>
</table>

The iterated function here is (c^z)*(z^c).
<img src="\images\fractals\z0.^(z).z.^(z0).png">
	
<h3>Different Colour Maps</h3>
Here are different colourings of the same fractal. 
These were made in MATLAB using the colourmaps "hot" and "flag".
<table>
<tr> 
	<td><img src="\images\fractals\cosh(z)+complex(0.1,-0.6).png"></td>
	<td><img src="\images\fractals\flag.png"></td>
</tr>
</table>
