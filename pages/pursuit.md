---
title: Pursuit Curves
permalink: /pursuit/
layout: default
---
<h2>Pursuit Curves</h2>

Some interesting diagrams can be made by considering "pursuit curves". Imagine that there are some number of points representing pursuers that chase each other. At each time step, the pursuers will move towards the current position of their prey. One way to represent this data is to draw a curve representing the trajectory of each pursuer (style 1). Alternatively, at each time step we can draw a line between each pursuer and its prey (style 2). The code for these images can be found <a href='https://github.com/ibeach/ibeach.github.io/tree/master/code/pursuit'>here</a>.

<table>
<tr>
	<td>Style 1</td>
	<td>Style 2</td>
</tr>
<tr>
	<td><img src="\images\pursuit\pursuit_5_example2.png"></td>
	<td><img src="\images\pursuit\pursuit_5_example1.png"></td>
</tr>
</table>

In the examples below, there are $n$ pursuers, and each pursuer chases the pursuer that lies $k$ places counter-clockwise from them. We pick $0<k<n$, so that a pursuer doesn't try to chase itself. 

<table>
<tr>
	<td></td>
	<td>$n=3$</td>
	<td>$n=4$</td>
	<td>$n=5$</td>
	<td>$n=6$</td>
</tr>
<tr>
	<td>$k=1$</td>
	<td><img src="\images\pursuit\pursuit_3_1.png"></td>
	<td><img src="\images\pursuit\pursuit_4_1.png"></td>
	<td><img src="\images\pursuit\pursuit_5_1.png"></td>
	<td><img src="\images\pursuit\pursuit_6_1.png"></td>
</tr>
<tr>
	<td>$k=2$</td>
	<td><img src="\images\pursuit\pursuit_3_2.png"></td>
	<td><img src="\images\pursuit\pursuit_4_2.png"></td>
	<td><img src="\images\pursuit\pursuit_5_2.png"></td>
	<td><img src="\images\pursuit\pursuit_6_2.png"></td>
</tr>
<tr>
	<td>$k=3$</td>
	<td></td>
	<td><img src="\images\pursuit\pursuit_4_3.png"></td>
	<td><img src="\images\pursuit\pursuit_5_3.png"></td>
	<td><img src="\images\pursuit\pursuit_6_3.png"></td>
</tr>
<tr>
	<td>$k=4$</td>
	<td></td>
	<td></td>
	<td><img src="\images\pursuit\pursuit_5_4.png"></td>
	<td><img src="\images\pursuit\pursuit_6_4.png"></td>
</tr>
<tr>
	<td>$k=5$</td>
	<td></td>
	<td></td>
	<td></td>
	<td><img src="\images\pursuit\pursuit_6_5.png"></td>
</tr>

</table>

Here is a more colourful depiction of some of the above diagrams.

<table>
<tr>
	<td>$n=3, k=0$</td>
	<td>$n=4, k=0$</td>
	<td>$n=5, k=0$</td>
	<td>$n=6, k=0$</td>
</tr>
	<tr>
		<td><img src="\images\pursuit\pursuit_3_alt.png"></td>
		<td><img src="\images\pursuit\pursuit_4_alt.png"></td>
		<td><img src="\images\pursuit\pursuit_5_alt.png"></td>
		<td><img src="\images\pursuit\pursuit_6_alt.png"></td>
	</tr>
</table>

