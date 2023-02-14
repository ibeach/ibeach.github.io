---
title: Wolfram Automata
permalink: /wolfram/
layout: default
---

Essentially, a cellular automaton takes in a space of cells and outputs a new space of cells according to a fixed set of rules. 
For our purposes, you can imagine that the x-axis is the space of cells and the y-axis is time. 
Each cell is either "off" (black) or "on" (white). For the automata below, the state of each cell is determined only by the state of its neighbours and itself in the previous timestep.
Despite the seeming simplicity of these rules, they produce a wide variety of interesting patterns.
These are the so-called "Wolfram Elementary Automata". There are 2^8 of them, and each corresponding rule can be described by a string of 8 zeros and ones. 
<p>
Here are a few examples, where each rule is shown starting with all cells "on". You can find the code for these images <a href = "https://github.com/ibeach/ibeach.github.io/tree/master/code/wolfram">here</a>.

<table margins="2px">
	<tr>
		<th>00010010</th>
		<th>01001001</th>
	</tr>
	<tr>
		<td><img src="\images\wolfram\for_display\00010010.png"></td>
		<td><img src="\images\wolfram\for_display\01001001.png"></td>
	</tr>
	<tr>
		<th>01101001</th>
		<th>10000001</th>
	</tr>
	<tr>
		<td><img src="\images\wolfram\for_display\01101001.png"></td>
		<td><img src="\images\wolfram\for_display\10000001.png"></td>
	</tr>
	<tr>
		<th>10010110</th>
		<th>10100101</th>
	</tr>
	<tr>
		<td><img src="\images\wolfram\for_display\10010110.png"></td>
		<td><img src="\images\wolfram\for_display\10100101.png"></td>
	</tr>
</table>
