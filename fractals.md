---
title: Fractals
---

This is a gallery of fractals that I have made with MATLAB and Python. 
Much of the inspiration for these images comes from Pickover's <i>Computers, Pattern, Chaos and Beauty</i>.

<h3>Polynomials</h3>
The pictures below are Julia sets represented by various polynomial functions.
Take a look at the effect of degree on the pictures below.

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

Of course, there's nothing wrong with the standard quadratic Julia set.

<img src="\images\fractals\z.^2+complex(-0.8,0.156).png">
	
<h3>Cosh and Sinh</h3>
These are hyperbolic cosine fractals.

<table>
<tr> 
	<td><img src="\images\fractals\(cmath.cosh(z))+complex(0,-0.9).png"></td>
	<td><img src="\images\fractals\(cmath.cosh(z))+complex(0.4,0.6).png"></td>
</tr>
</table>
	
Combining holomorphic and non-holomorphic functions can produce some very interesting results.

<img src="\images\fractals\cosh(z)+complex(0.1,0.9).abs(z).png">

<h3>The Burning Ship</h3>
Here are some Burning Ship inspired fractals. 
The three below are produced by iterating cosh(z)+|z|*c, where c is the location of the initial point.

<table>
<tr> 
	<td><img src="\images\fractals\cosh(z)+abs(z).z0.png"></td>
	<td><img src="\images\fractals\cosh(z)+abs(z).z0_zoom.png"></td>
	<td><img src="\images\fractals\cosh(z)+abs(z).z0_zoom2.png"></td>
</tr>
</table>
	
These two are "failed attempts" caused by buggy code, but are still pretty interesting.
<table>
<tr> 
	<td><img src="\images\fractals\alt_burning_ship.png"></td>
	<td><img src="\images\fractals\alt_burning_ship_zoom.png"></td>
</tr>
</table>

<h3>Different Colour Maps</h3>
Here are different colourings of the same fractal. 
These were made in MATLAB using the colourmaps "hot" and "flag".
<table>
<tr> 
	<td><img src="\images\fractals\cosh(z)+complex(0.1,-0.6).png"></td>
	<td><img src="\images\fractals\flag.png"></td>
</tr>
</table>
