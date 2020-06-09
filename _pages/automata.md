---
title: 2D Automata
permalink: /automata/
---
<h3>On This Page:</h3> 
2-Dimensional Cellular Automata

<h3>Explanation:</h3> 
These cellular automaton have two spatial dimensions. Again, each cell is either "off" or "on", but for added interest there are 
two additional colours to denote cells that have changed their state in the last time step (0->1 and 1->0). 
As in the Wolfram automata, the state of each cell is determined only by the state of its neighbours and itself in the previous timestep.
The following are all VOTE-style automata, which means that a cell's state is determined by the <i>sum</i> of its neighbours' states, not their exact distribution.

<h3>Learn More:</h3> 
<a href ="https://www.fourmilab.ch/cellab/manual/rules.html">FourmiLab</a>

Some example behaviour of VOTE-style automata.
The <i>i</i>th value of the rule-string determines the state given to a cell whose neighbour sum has value <i>i</i>.

<table>
<tr>
	<th>1100000001</th>
	<th>0000011111</th>
	<th>1111100100</th>
	<th>0101111111</th>
</tr>
<tr>
	<td><img src="\images\vote_automata\rule_1100000001.gif"></td>
	<td><img src="\images\vote_automata\rule_0000011111.gif"></td>
	<td><img src="\images\vote_automata\rule_1111100100.gif"></td>
	<td><img src="\images\vote_automata\rule_0101111111.gif"></td>
</tr>
</table>

Here is a table of example end states for all VOTE-style rules with random initial values. 
The rules are listed in increasing binary order from left to right-- for example, the top row is the rules
0000000000, 1000000000, 0100000000, 1100000000, 0010000000, and so on.

{% include vote_table.md %}
