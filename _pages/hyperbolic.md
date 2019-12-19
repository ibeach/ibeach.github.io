---
title: Hyperbolic Geometry
permalink: /hyperbolic/
---

<h3>On This Page:</h3> 
Hyperbolic Tilings

<h3>Explanation:</h3> 
Just as the Euclidean plane can be tiled by (certain kinds of) regular polygons, so too can the hyperbolic plane. 
Moreover, the action of Fuchsian groups on hyperbolic space can induce tilings of the hyperbolic plane by their fundamental domain. 
See also "The Beauty of the Hyperbolic Plane" on my Talks page.

<h3>Learn More:</h3>
<ul>
<li><a href ="http://homepages.warwick.ac.uk/~masbb/">Caroline Series' MAT448 Notes</a></li>
<li><i>Indra's Pearls</i> by Caroline Series and David Mumford</li>
</ul>

<h3>Code:</h3>
<a href ="https://github.com/ibeach/ibeach.github.io/tree/master/code/hyperbolic">/code/hyperbolic</a>

The orientation-preserving isometries of the hyperbolic plane are the Mobius maps with real coefficients and determinant 1. 
There are 3 types, and they are characterized by their trace.

<table>
<tr>
	<td style="padding: 3px;">Type</td>
	<th style="padding: 3px;">Elliptic</th>
	<th style="padding: 3px;">Parabolic</th>
	<th style="padding: 3px;">Hyperbolic</th>
</tr>
<tr>
	<td style="padding: 3px;">Trace</td>
	<td style="padding: 3px;">|Tr| < 2</td>
	<td style="padding: 3px;">|Tr| = 2</td>
	<td style="padding: 3px;">|Tr| > 2</td>
</tr>
<tr>
	<td style="padding: 3px;">Example</td>
	<td style="padding: 3px;">$z \to e^{(i\pi/2)}z$</td>
	<td style="padding: 3px;">$z \to z+1$</td>
	<td style="padding: 3px;">$z \to 2z$</td>
</tr>
<tr>
	<td style="padding: 3px;">Orbit Diagram</td>
	<td style="padding: 3px;"><img src="\images\hyperbolic\elliptic.png"></td>
	<td style="padding: 3px;"><img src="\images\hyperbolic\parabolic.png"></td>
	<td style="padding: 3px;"><img src="\images\hyperbolic\hyperbolic.png"></td>
</tr>
<tr>
	<td style="padding: 3px;">Animation</td>
	<td style="padding: 3px;"><img src="\images\hyperbolic\4_5_elliptic.gif"></td>
	<td style="padding: 3px;"><img src="\images\hyperbolic\4_5_parabolic.gif"></td>
	<td style="padding: 3px;"><img src="\images\hyperbolic\4_5_hyperbolic.gif"></td>
</tr>
</table>

Regular tilings on any surface can be characterized by their Schlafli symbol (p,q), where p is the number of edges of each polygon and q is the number of polygons meeting at each vertex. 
Only some symbols admit tilings for a given surface, however.
The below are regular tilings of the Poincare Disk model of hyperbolic space.

{% include tiling_table.md %}

{% include truncated_table.md %}

Fuchsian groups of isometries also induce tilings, where each tile is a copy of the group's fundamental domain. 
The placement of the tiles is determined by the action of the group: each tile corresponds to the image of the original fundamental domain under a single group element.

<table>
<tr>
	<th>The Action of $SL(2,\mathbb{Z})$ </th>
	<th>The Action of a Punctured Torus Group </th>
</tr>
<tr>
	<td><img src="\images\hyperbolic\sl2z_cool.png" style="width:500px;"></td>
	<td><img src="\images\hyperbolic\torus.png" style="width:500px;"></td>
</tr>
</table>
