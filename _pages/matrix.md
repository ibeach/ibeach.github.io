---
title: Matrix Substitutions
permalink: /matrix/
---

We can create images from matrices with integer values by assigning the colour of the pixel at position $(i,j)$ according to the value of the the corresponding matrix entry.
By implementing a rewriting rule similar in spirit to an <a href ="\turtle">L-system</a>, we can make these images quite complicted. To produce the images on this page, we start with an initial matrix (say, the matrix $[1]$) and apply an iterated rewriting rule that replaces every entry with value $i$ with a certain square matrix $A_i$.

<table style="border-spacing: 10px;
			  border-collapse: separate;">
<tr>
	<td><img src="\images\matrix\matrix_tiling_1940.png"></td>
	<td><img src="\images\matrix\matrix_tiling_1313.png"></td>
	<td><img src="\images\matrix\matrix_tiling_1182.png"></td>
</tr>
<tr>
	<td><img src="\images\matrix\matrix_tiling_1106.png"></td>
	<td><img src="\images\matrix\matrix_tiling_767.png"></td>
	<td><img src="\images\matrix\matrix_tiling_787.png"></td>
</tr>
<tr>
	<td><img src="\images\matrix\matrix_tiling_252.png"></td>
	<td><img src="\images\matrix\matrix_tiling_130.png"></td>
	<td><img src="\images\matrix\matrix_tiling_350.png"></td>
</tr>
<tr>
	<td><img src="\images\matrix\matrix_tiling_4.png"></td>
	<td><img src="\images\matrix\matrix_tiling_711.png"></td>
	<td><img src="\images\matrix\matrix_tiling_610.png"></td>
</tr>
</table>

Here we have the same idea with a slightly different presentation. 
Instead of representing each matrix entry by a single pixel, we use a polygon for a more artistic look.

<table style="border-spacing: 10px;
			  border-collapse: separate;">
<tr>
	<td><img src="\images\matrix\matrix_tiling_example.png" width="500px"></td>
</tr>
<tr>
	<td><img src="\images\matrix\matrix_tiling_example_2.png" width="500px"></td>
</tr>
<tr>
	<td><img src="\images\matrix\matrix_tiling_example_3.png" width="500px"></td>
</tr>
</table>
