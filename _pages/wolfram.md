---
title: Wolfram Automata
permalink: /wolfram/
---

<h3>Explanation:</h3> 
Essentially, a cellular automaton takes in a space of cells and outputs a new space of cells according to a fixed set of rules. 
For our purposes, you can imagine that the x-axis is the space of cells and the y-axis is time. 
Each cell is either "off" (black) or "on" (white). For the automata below, the state of each cell is determined only by the state of its neighbours and itself in the previous timestep.
Despite the seeming simplicity of these rules, they produce a wide variety of interesting patterns.

<h3>Learn More:</h3> 
<a href ="http://mathworld.wolfram.com/ElementaryCellularAutomaton.html">WolframMathWorld</a>

<h3>Code:</h3> 
<a href ="https://github.com/ibeach/ibeach.github.io/tree/master/code/wolfram">/code/wolfram</a>

These are the so-called "Wolfram Elementary Automata". There are 2^8 of them, and each corresponding rule can be described by a string of 8 zeros and ones. 
For an explanation of the naming scheme, see the "Learn More" link.

<table margins="2px">
<tr>
	<th>10010110</th>
	<th>10101001</th>
	<th>01101001</th>
</tr>
<tr>
	<td><img src="\images\wolfram\10010110_large.png" width="300px"></td>
	<td><img src="\images\wolfram\10101001_large.png" width="300px"></td>
	<td><img src="\images\wolfram\01101001_large.png" width="300px"></td>
</tr>

</table>

Here are a few examples of Wolfram automata, where each rule is shown with three example starting values (all zeroes, all ones, or random).
For a full list of images of all 2^8 rules, see this website's GitHub respository.

{% include wolfram_table_curated.md %}
