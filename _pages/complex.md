---
title: Domain Colouring
permalink: /complex/
---

It's not easy to graph complex functions (since such a graph would have 4 real dimensions), but the image of a complex function can still be visualized.
Each point is coloured with a hue corresponding to the argument of the image of that point. 
For example, the image of the identity function would look like the usual colour wheel.
In the case of conformal maps, it is also interesting to look at the image of a rectangular grid. 
The black lines are the image of a standard square grid. You can find the code for these images <a href = "https://github.com/ibeach/ibeach.github.io/tree/master/code/complex">here</a>.

<h3> The Identity Map </h3>

<table>
<tr> 
	<th>$$z \mapsto z$$</th>
</tr>
<tr> 
	<td><img src="\images\complex\id.png"></td>
</tr>
</table>

<h3> Polynomials </h3>

<table>
<tr> 
	<th>$$z \mapsto z^2$$</th>
	<th>$$z \mapsto z^5$$</th>
</tr>
<tr>
	<td><img src="\images\complex\quadratic.png"></td>
	<td><img src="\images\complex\quintic.png"></td>
</tr>
</table>

<h3> The Cayley Map </h3>
Some visualizations of the Cayley map and its inverse. 
The gaps are the images of a neighbourhood of infinity.

<table>
<tr> 
	<th>Cayley Map $$z \mapsto (i-z)/(i+z)$$</th>
	<th>Cayley Map Inverse  $$z \mapsto i(1-z)/(1+z)$$</th>
</tr>
<tr> 
	<td><img src="\images\complex\cayley.png"></td>
	<td><img src="\images\complex\cayley_inverse.png"></td>
</tr>
</table>

