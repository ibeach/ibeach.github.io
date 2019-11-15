---
title: Hyperbolic Geometry
permalink: /hyperbolic/
---


<b>On This Page:</b> 
Hyperbolic Tilings

<b>Explanation:</b> 
Just as the Euclidean plane can be tiled by (certain kinds of) regular polygons, so can the hyperbolic plane. 
Moreover, the action of Fuchsian groups on hyperbolic space can induce tilings of the hyperbolic plane by their fundamental domain. See also "The Beauty of the Hyperbolic Plane" on my Talks page.

<b>Learn More:</b>
<ul>
<li><a href ="http://homepages.warwick.ac.uk/~masbb/">Caroline Series' MAT448 Notes</a></li>
<li><i>Indra's Pearls</i> by Caroline Series and David Mumford</li>
</ul>

<b>Code:</b>
<a href ="https://github.com/ibeach/ibeach.github.io/tree/master/code/hyperbolic">/code/hyperbolic</a>

The orientation-preserving isometries of the hyperbolic plane are the Mobius maps with real coefficients and determinant 1. There are 3 types, and they are characterized by their trace.

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
	<td style="padding: 3px;">z -> e^(i*pi/2)z</td>
	<td style="padding: 3px;">z -> z+1</td>
	<td style="padding: 3px;">z -> 2z</td>
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

Regular tilings on any surface can be characterized by their Schlafli symbol (p,q), where p is the number of edges of each polygon and q is the number of polygons meeting at each vertex. Only some symbols admit tilings for a given surface, however.
The below are regular tilings of the Poincare Disk model of hyperbolic space.

<h3> Regular Tilings</h3>
<table>
<tr>
	<th>p\q</th>
	<th>3</th>
	<th>4</th>
	<th>5</th>
	<th>6</th>
	<th>7</th>
	<th>8</th>
	<th>9</th>
	<th>10</th>
	<th>inf</th>
</tr>
<tr>
	<th>3</th>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td><img src="\images\hyperbolic\3_7.png"></td>
	<td><img src="\images\hyperbolic\3_8.png"></td>
	<td><img src="\images\hyperbolic\3_9.png"></td>
	<td><img src="\images\hyperbolic\3_10.png"></td>
	<td><img src="\images\hyperbolic\3_inf.png"></td>
</tr>
<tr>
	<th>4</th>
	<td></td>
	<td></td>
	<td><img src="\images\hyperbolic\4_5.png"></td>
	<td><img src="\images\hyperbolic\4_6.png"></td>
	<td><img src="\images\hyperbolic\4_7.png"></td>
	<td><img src="\images\hyperbolic\4_8.png"></td>
	<td><img src="\images\hyperbolic\4_9.png"></td>
	<td><img src="\images\hyperbolic\4_10.png"></td>
	<td><img src="\images\hyperbolic\4_inf.png"></td>
</tr>
<tr>
	<th>5</th>
	<td></td>
	<td><img src="\images\hyperbolic\5_4.png"></td>
	<td><img src="\images\hyperbolic\5_5.png"></td>
	<td><img src="\images\hyperbolic\5_6.png"></td>
	<td><img src="\images\hyperbolic\5_7.png"></td>
	<td><img src="\images\hyperbolic\5_8.png"></td>
	<td><img src="\images\hyperbolic\5_9.png"></td>
	<td><img src="\images\hyperbolic\5_10.png"></td>
	<td><img src="\images\hyperbolic\5_inf.png"></td>
</tr>
<tr>
	<th>6</th>
	<td></td>
	<td><img src="\images\hyperbolic\6_4.png"></td>
	<td><img src="\images\hyperbolic\6_5.png"></td>
	<td><img src="\images\hyperbolic\6_6.png"></td>
	<td><img src="\images\hyperbolic\6_7.png"></td>
	<td><img src="\images\hyperbolic\6_8.png"></td>
	<td><img src="\images\hyperbolic\6_9.png"></td>
	<td><img src="\images\hyperbolic\6_10.png"></td>
	<td><img src="\images\hyperbolic\6_inf.png"></td>
</tr>
<tr>
	<th>7</th>
	<td><img src="\images\hyperbolic\7_3.png"></td>
	<td><img src="\images\hyperbolic\7_4.png"></td>
	<td><img src="\images\hyperbolic\7_5.png"></td>
	<td><img src="\images\hyperbolic\7_6.png"></td>
	<td><img src="\images\hyperbolic\7_7.png"></td>
	<td><img src="\images\hyperbolic\7_8.png"></td>
	<td><img src="\images\hyperbolic\7_9.png"></td>
	<td><img src="\images\hyperbolic\7_10.png"></td>
	<td><img src="\images\hyperbolic\7_inf.png"></td>
</tr>
<tr>
	<th>8</th>
	<td><img src="\images\hyperbolic\8_3.png"></td>
	<td><img src="\images\hyperbolic\8_4.png"></td>
	<td><img src="\images\hyperbolic\8_5.png"></td>
	<td><img src="\images\hyperbolic\8_6.png"></td>
	<td><img src="\images\hyperbolic\8_7.png"></td>
	<td><img src="\images\hyperbolic\8_8.png"></td>
	<td><img src="\images\hyperbolic\8_9.png"></td>
	<td><img src="\images\hyperbolic\8_10.png"></td>
	<td><img src="\images\hyperbolic\8_inf.png"></td>
</tr>
<tr>
	<th>9</th>
	<td><img src="\images\hyperbolic\9_3.png"></td>
	<td><img src="\images\hyperbolic\9_4.png"></td>
	<td><img src="\images\hyperbolic\9_5.png"></td>
	<td><img src="\images\hyperbolic\9_6.png"></td>
	<td><img src="\images\hyperbolic\9_7.png"></td>
	<td><img src="\images\hyperbolic\9_8.png"></td>
	<td><img src="\images\hyperbolic\9_9.png"></td>
	<td><img src="\images\hyperbolic\9_10.png"></td>
	<td><img src="\images\hyperbolic\9_inf.png"></td>
</tr>
</table>

<h3> Regular Tilings (Colourful!)</h3>
<table>
<tr>
	<th>p\q</th>
	<th>3</th>
	<th>4</th>
	<th>5</th>
	<th>6</th>
	<th>7</th>
	<th>8</th>
	<th>9</th>
	<th>10</th>
	<th>inf</th>
</tr>
<tr>
	<th>3</th>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td><img src="\images\hyperbolic\colourful\3_7.png"></td>
	<td><img src="\images\hyperbolic\colourful\3_8.png"></td>
	<td><img src="\images\hyperbolic\colourful\3_9.png"></td>
	<td><img src="\images\hyperbolic\colourful\3_10.png"></td>
	<td><img src="\images\hyperbolic\colourful\3_inf.png"></td>
</tr>
<tr>
	<th>4</th>
	<td></td>
	<td></td>
	<td><img src="\images\hyperbolic\colourful\4_5.png"></td>
	<td><img src="\images\hyperbolic\colourful\4_6.png"></td>
	<td><img src="\images\hyperbolic\colourful\4_7.png"></td>
	<td><img src="\images\hyperbolic\colourful\4_8.png"></td>
	<td><img src="\images\hyperbolic\colourful\4_9.png"></td>
	<td><img src="\images\hyperbolic\colourful\4_10.png"></td>
	<td><img src="\images\hyperbolic\colourful\4_inf.png"></td>
</tr>
<tr>
	<th>5</th>
	<td></td>
	<td><img src="\images\hyperbolic\colourful\5_4.png"></td>
	<td><img src="\images\hyperbolic\colourful\5_5.png"></td>
	<td><img src="\images\hyperbolic\colourful\5_6.png"></td>
	<td><img src="\images\hyperbolic\colourful\5_7.png"></td>
	<td><img src="\images\hyperbolic\colourful\5_8.png"></td>
	<td><img src="\images\hyperbolic\colourful\5_9.png"></td>
	<td><img src="\images\hyperbolic\colourful\5_10.png"></td>
	<td><img src="\images\hyperbolic\colourful\5_inf.png"></td>
</tr>
<tr>
	<th>6</th>
	<td></td>
	<td><img src="\images\hyperbolic\colourful\6_4.png"></td>
	<td><img src="\images\hyperbolic\colourful\6_5.png"></td>
	<td><img src="\images\hyperbolic\colourful\6_6.png"></td>
	<td><img src="\images\hyperbolic\colourful\6_7.png"></td>
	<td><img src="\images\hyperbolic\colourful\6_8.png"></td>
	<td><img src="\images\hyperbolic\colourful\6_9.png"></td>
	<td><img src="\images\hyperbolic\colourful\6_10.png"></td>
	<td><img src="\images\hyperbolic\colourful\6_inf.png"></td>
</tr>
<tr>
	<th>7</th>
	<td><img src="\images\hyperbolic\colourful\7_3.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_4.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_5.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_6.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_7.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_8.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_9.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_10.png"></td>
	<td><img src="\images\hyperbolic\colourful\7_inf.png"></td>
</tr>
<tr>
	<th>8</th>
	<td><img src="\images\hyperbolic\colourful\8_3.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_4.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_5.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_6.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_7.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_8.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_9.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_10.png"></td>
	<td><img src="\images\hyperbolic\colourful\8_inf.png"></td>
</tr>
<tr>
	<th>9</th>
	<td><img src="\images\hyperbolic\colourful\9_3.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_4.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_5.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_6.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_7.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_8.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_9.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_10.png"></td>
	<td><img src="\images\hyperbolic\colourful\9_inf.png"></td>
</tr>
</table>

<table>
<h3> Truncated Tilings </h3>
<tr>
	<th>p\q</th>
	<th>3</th>
	<th>4</th>
	<th>5</th>
	<th>6</th>
	<th>7</th>
	<th>8</th>
	<th>9</th>
</tr>
<tr>
	<th>3</th>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td><img src="\images\hyperbolic\3_7_trunc.png"></td>
	<td><img src="\images\hyperbolic\3_8_trunc.png"></td>
	<td><img src="\images\hyperbolic\3_9_trunc.png"></td>
</tr>
<tr>
	<th>4</th>
	<td></td>
	<td></td>
	<td><img src="\images\hyperbolic\4_5_trunc.png"></td>
	<td><img src="\images\hyperbolic\4_6_trunc.png"></td>
	<td><img src="\images\hyperbolic\4_7_trunc.png"></td>
	<td><img src="\images\hyperbolic\4_8_trunc.png"></td>
	<td><img src="\images\hyperbolic\4_9_trunc.png"></td>
</tr>
<tr>
	<th>5</th>
	<td></td>
	<td><img src="\images\hyperbolic\5_4_trunc.png"></td>
	<td><img src="\images\hyperbolic\5_5_trunc.png"></td>
	<td><img src="\images\hyperbolic\5_6_trunc.png"></td>
	<td><img src="\images\hyperbolic\5_7_trunc.png"></td>
	<td><img src="\images\hyperbolic\5_8_trunc.png"></td>
	<td><img src="\images\hyperbolic\5_9_trunc.png"></td>
</tr>
<tr>
	<th>6</th>
	<td></td>
	<td><img src="\images\hyperbolic\6_4_trunc.png"></td>
	<td><img src="\images\hyperbolic\6_5_trunc.png"></td>
	<td><img src="\images\hyperbolic\6_6_trunc.png"></td>
	<td><img src="\images\hyperbolic\6_7_trunc.png"></td>
	<td><img src="\images\hyperbolic\6_8_trunc.png"></td>
	<td><img src="\images\hyperbolic\6_9_trunc.png"></td>
</tr>
<tr>
	<th>7</th>
	<td><img src="\images\hyperbolic\7_3_trunc.png"></td>
	<td><img src="\images\hyperbolic\7_4_trunc.png"></td>
	<td><img src="\images\hyperbolic\7_5_trunc.png"></td>
	<td><img src="\images\hyperbolic\7_6_trunc.png"></td>
	<td><img src="\images\hyperbolic\7_7_trunc.png"></td>
	<td><img src="\images\hyperbolic\7_8_trunc.png"></td>
	<td><img src="\images\hyperbolic\7_9_trunc.png"></td>
</tr>
<tr>
	<th>8</th>
	<td><img src="\images\hyperbolic\8_3_trunc.png"></td>
	<td><img src="\images\hyperbolic\8_4_trunc.png"></td>
	<td><img src="\images\hyperbolic\8_5_trunc.png"></td>
	<td><img src="\images\hyperbolic\8_6_trunc.png"></td>
	<td><img src="\images\hyperbolic\8_7_trunc.png"></td>
	<td><img src="\images\hyperbolic\8_8_trunc.png"></td>
	<td><img src="\images\hyperbolic\8_9_trunc.png"></td>
</tr>
<tr>
	<th>9</th>
	<td><img src="\images\hyperbolic\9_3_trunc.png"></td>
	<td><img src="\images\hyperbolic\9_4_trunc.png"></td>
	<td><img src="\images\hyperbolic\9_5_trunc.png"></td>
	<td><img src="\images\hyperbolic\9_6_trunc.png"></td>
	<td><img src="\images\hyperbolic\9_7_trunc.png"></td>
	<td><img src="\images\hyperbolic\9_8_trunc.png"></td>
	<td><img src="\images\hyperbolic\9_9_trunc.png"></td>
</tr>
</table>

Fuchsian groups of isometries also induce tilings, where each tile is a copy of the group's fundamental domain.

<table>
<tr>
	<th>The Action of SL(2,Z) </th>
	<th>The Action of a Punctured Torus Group </th>
</tr>
<tr>
	<td><img src="\images\hyperbolic\sl2z_cool.png" style="width:500px;"></td>
	<td><img src="\images\hyperbolic\torus.png" style="width:500px;"></td>
</tr>
</table>
