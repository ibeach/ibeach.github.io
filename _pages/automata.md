---
title: 2D Automata
permalink: /automata/
---
<b>On This Page:</b> 
2-Dimensional Cellular Automata

<b>Explanation:</b> 
These cellular automaton have two spatial dimensions. Again, each cell is either "off" or "on", but for added interest there are 
two additional colours to denote cells that have changed their state in the last time step (0->1 and 1->0). 
As in the Wolfram automata, the state of each cell is determined only by the state of its neighbours and itself in the previous timestep.
The following are all VOTE-style automata, which means that a cell's state is determined by the <i>sum</i> of its neighbours' states, not their exact distribution.

<b>Learn More:</b> 
<a href ="https://www.fourmilab.ch/cellab/manual/rules.html">FourmiLab</a>

<b>Code:</b> 
<a href ="https://github.com/ibeach/ibeach.github.io/tree/master/code/automata">/code/automata</a>

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

Here is a table of example end states for all VOTE-style rules. The initial values are randomized.

<table>
	<tr>
		<td>0000000000</td>
		<td><img src="\images\vote_automata\area_rule_0000000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000000.png"></td>
	</tr>
	<tr>
		<td>0001000000</td>
		<td><img src="\images\vote_automata\area_rule_0001000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000000.png"></td>
	</tr>
	<tr>
		<td>0000100000</td>
		<td><img src="\images\vote_automata\area_rule_0000100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100000.png"></td>
	</tr>
	<tr>
		<td>0001100000</td>
		<td><img src="\images\vote_automata\area_rule_0001100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100000.png"></td>
	</tr>
	<tr>
		<td>0000010000</td>
		<td><img src="\images\vote_automata\area_rule_0000010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010000.png"></td>
	</tr>
	<tr>
		<td>0001010000</td>
		<td><img src="\images\vote_automata\area_rule_0001010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010000.png"></td>
	</tr>
	<tr>
		<td>0000110000</td>
		<td><img src="\images\vote_automata\area_rule_0000110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110000.png"></td>
	</tr>
	<tr>
		<td>0001110000</td>
		<td><img src="\images\vote_automata\area_rule_0001110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110000.png"></td>
	</tr>
	<tr>
		<td>0000001000</td>
		<td><img src="\images\vote_automata\area_rule_0000001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001000.png"></td>
	</tr>
	<tr>
		<td>0001001000</td>
		<td><img src="\images\vote_automata\area_rule_0001001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001000.png"></td>
	</tr>
	<tr>
		<td>0000101000</td>
		<td><img src="\images\vote_automata\area_rule_0000101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101000.png"></td>
	</tr>
	<tr>
		<td>0001101000</td>
		<td><img src="\images\vote_automata\area_rule_0001101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101000.png"></td>
	</tr>
	<tr>
		<td>0000011000</td>
		<td><img src="\images\vote_automata\area_rule_0000011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011000.png"></td>
	</tr>
	<tr>
		<td>0001011000</td>
		<td><img src="\images\vote_automata\area_rule_0001011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011000.png"></td>
	</tr>
	<tr>
		<td>0000111000</td>
		<td><img src="\images\vote_automata\area_rule_0000111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111000.png"></td>
	</tr>
	<tr>
		<td>0001111000</td>
		<td><img src="\images\vote_automata\area_rule_0001111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111000.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111000.png"></td>
	</tr>
	<tr>
		<td>0000000100</td>
		<td><img src="\images\vote_automata\area_rule_0000000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000100.png"></td>
	</tr>
	<tr>
		<td>0001000100</td>
		<td><img src="\images\vote_automata\area_rule_0001000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000100.png"></td>
	</tr>
	<tr>
		<td>0000100100</td>
		<td><img src="\images\vote_automata\area_rule_0000100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100100.png"></td>
	</tr>
	<tr>
		<td>0001100100</td>
		<td><img src="\images\vote_automata\area_rule_0001100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100100.png"></td>
	</tr>
	<tr>
		<td>0000010100</td>
		<td><img src="\images\vote_automata\area_rule_0000010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010100.png"></td>
	</tr>
	<tr>
		<td>0001010100</td>
		<td><img src="\images\vote_automata\area_rule_0001010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010100.png"></td>
	</tr>
	<tr>
		<td>0000110100</td>
		<td><img src="\images\vote_automata\area_rule_0000110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110100.png"></td>
	</tr>
	<tr>
		<td>0001110100</td>
		<td><img src="\images\vote_automata\area_rule_0001110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110100.png"></td>
	</tr>
	<tr>
		<td>0000001100</td>
		<td><img src="\images\vote_automata\area_rule_0000001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001100.png"></td>
	</tr>
	<tr>
		<td>0001001100</td>
		<td><img src="\images\vote_automata\area_rule_0001001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001100.png"></td>
	</tr>
	<tr>
		<td>0000101100</td>
		<td><img src="\images\vote_automata\area_rule_0000101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101100.png"></td>
	</tr>
	<tr>
		<td>0001101100</td>
		<td><img src="\images\vote_automata\area_rule_0001101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101100.png"></td>
	</tr>
	<tr>
		<td>0000011100</td>
		<td><img src="\images\vote_automata\area_rule_0000011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011100.png"></td>
	</tr>
	<tr>
		<td>0001011100</td>
		<td><img src="\images\vote_automata\area_rule_0001011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011100.png"></td>
	</tr>
	<tr>
		<td>0000111100</td>
		<td><img src="\images\vote_automata\area_rule_0000111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111100.png"></td>
	</tr>
	<tr>
		<td>0001111100</td>
		<td><img src="\images\vote_automata\area_rule_0001111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111100.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111100.png"></td>
	</tr>
	<tr>
		<td>0000000010</td>
		<td><img src="\images\vote_automata\area_rule_0000000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000010.png"></td>
	</tr>
	<tr>
		<td>0001000010</td>
		<td><img src="\images\vote_automata\area_rule_0001000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000010.png"></td>
	</tr>
	<tr>
		<td>0000100010</td>
		<td><img src="\images\vote_automata\area_rule_0000100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100010.png"></td>
	</tr>
	<tr>
		<td>0001100010</td>
		<td><img src="\images\vote_automata\area_rule_0001100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100010.png"></td>
	</tr>
	<tr>
		<td>0000010010</td>
		<td><img src="\images\vote_automata\area_rule_0000010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010010.png"></td>
	</tr>
	<tr>
		<td>0001010010</td>
		<td><img src="\images\vote_automata\area_rule_0001010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010010.png"></td>
	</tr>
	<tr>
		<td>0000110010</td>
		<td><img src="\images\vote_automata\area_rule_0000110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110010.png"></td>
	</tr>
	<tr>
		<td>0001110010</td>
		<td><img src="\images\vote_automata\area_rule_0001110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110010.png"></td>
	</tr>
	<tr>
		<td>0000001010</td>
		<td><img src="\images\vote_automata\area_rule_0000001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001010.png"></td>
	</tr>
	<tr>
		<td>0001001010</td>
		<td><img src="\images\vote_automata\area_rule_0001001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001010.png"></td>
	</tr>
	<tr>
		<td>0000101010</td>
		<td><img src="\images\vote_automata\area_rule_0000101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101010.png"></td>
	</tr>
	<tr>
		<td>0001101010</td>
		<td><img src="\images\vote_automata\area_rule_0001101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101010.png"></td>
	</tr>
	<tr>
		<td>0000011010</td>
		<td><img src="\images\vote_automata\area_rule_0000011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011010.png"></td>
	</tr>
	<tr>
		<td>0001011010</td>
		<td><img src="\images\vote_automata\area_rule_0001011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011010.png"></td>
	</tr>
	<tr>
		<td>0000111010</td>
		<td><img src="\images\vote_automata\area_rule_0000111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111010.png"></td>
	</tr>
	<tr>
		<td>0001111010</td>
		<td><img src="\images\vote_automata\area_rule_0001111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111010.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111010.png"></td>
	</tr>
	<tr>
		<td>0000000110</td>
		<td><img src="\images\vote_automata\area_rule_0000000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000110.png"></td>
	</tr>
	<tr>
		<td>0001000110</td>
		<td><img src="\images\vote_automata\area_rule_0001000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000110.png"></td>
	</tr>
	<tr>
		<td>0000100110</td>
		<td><img src="\images\vote_automata\area_rule_0000100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100110.png"></td>
	</tr>
	<tr>
		<td>0001100110</td>
		<td><img src="\images\vote_automata\area_rule_0001100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100110.png"></td>
	</tr>
	<tr>
		<td>0000010110</td>
		<td><img src="\images\vote_automata\area_rule_0000010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010110.png"></td>
	</tr>
	<tr>
		<td>0001010110</td>
		<td><img src="\images\vote_automata\area_rule_0001010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010110.png"></td>
	</tr>
	<tr>
		<td>0000110110</td>
		<td><img src="\images\vote_automata\area_rule_0000110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110110.png"></td>
	</tr>
	<tr>
		<td>0001110110</td>
		<td><img src="\images\vote_automata\area_rule_0001110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110110.png"></td>
	</tr>
	<tr>
		<td>0000001110</td>
		<td><img src="\images\vote_automata\area_rule_0000001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001110.png"></td>
	</tr>
	<tr>
		<td>0001001110</td>
		<td><img src="\images\vote_automata\area_rule_0001001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001110.png"></td>
	</tr>
	<tr>
		<td>0000101110</td>
		<td><img src="\images\vote_automata\area_rule_0000101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101110.png"></td>
	</tr>
	<tr>
		<td>0001101110</td>
		<td><img src="\images\vote_automata\area_rule_0001101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101110.png"></td>
	</tr>
	<tr>
		<td>0000011110</td>
		<td><img src="\images\vote_automata\area_rule_0000011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011110.png"></td>
	</tr>
	<tr>
		<td>0001011110</td>
		<td><img src="\images\vote_automata\area_rule_0001011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011110.png"></td>
	</tr>
	<tr>
		<td>0000111110</td>
		<td><img src="\images\vote_automata\area_rule_0000111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111110.png"></td>
	</tr>
	<tr>
		<td>0001111110</td>
		<td><img src="\images\vote_automata\area_rule_0001111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111110.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111110.png"></td>
	</tr>
	<tr>
		<td>0000000001</td>
		<td><img src="\images\vote_automata\area_rule_0000000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000001.png"></td>
	</tr>
	<tr>
		<td>0001000001</td>
		<td><img src="\images\vote_automata\area_rule_0001000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000001.png"></td>
	</tr>
	<tr>
		<td>0000100001</td>
		<td><img src="\images\vote_automata\area_rule_0000100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100001.png"></td>
	</tr>
	<tr>
		<td>0001100001</td>
		<td><img src="\images\vote_automata\area_rule_0001100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100001.png"></td>
	</tr>
	<tr>
		<td>0000010001</td>
		<td><img src="\images\vote_automata\area_rule_0000010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010001.png"></td>
	</tr>
	<tr>
		<td>0001010001</td>
		<td><img src="\images\vote_automata\area_rule_0001010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010001.png"></td>
	</tr>
	<tr>
		<td>0000110001</td>
		<td><img src="\images\vote_automata\area_rule_0000110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110001.png"></td>
	</tr>
	<tr>
		<td>0001110001</td>
		<td><img src="\images\vote_automata\area_rule_0001110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110001.png"></td>
	</tr>
	<tr>
		<td>0000001001</td>
		<td><img src="\images\vote_automata\area_rule_0000001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001001.png"></td>
	</tr>
	<tr>
		<td>0001001001</td>
		<td><img src="\images\vote_automata\area_rule_0001001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001001.png"></td>
	</tr>
	<tr>
		<td>0000101001</td>
		<td><img src="\images\vote_automata\area_rule_0000101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101001.png"></td>
	</tr>
	<tr>
		<td>0001101001</td>
		<td><img src="\images\vote_automata\area_rule_0001101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101001.png"></td>
	</tr>
	<tr>
		<td>0000011001</td>
		<td><img src="\images\vote_automata\area_rule_0000011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011001.png"></td>
	</tr>
	<tr>
		<td>0001011001</td>
		<td><img src="\images\vote_automata\area_rule_0001011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011001.png"></td>
	</tr>
	<tr>
		<td>0000111001</td>
		<td><img src="\images\vote_automata\area_rule_0000111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111001.png"></td>
	</tr>
	<tr>
		<td>0001111001</td>
		<td><img src="\images\vote_automata\area_rule_0001111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111001.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111001.png"></td>
	</tr>
	<tr>
		<td>0000000101</td>
		<td><img src="\images\vote_automata\area_rule_0000000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000101.png"></td>
	</tr>
	<tr>
		<td>0001000101</td>
		<td><img src="\images\vote_automata\area_rule_0001000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000101.png"></td>
	</tr>
	<tr>
		<td>0000100101</td>
		<td><img src="\images\vote_automata\area_rule_0000100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100101.png"></td>
	</tr>
	<tr>
		<td>0001100101</td>
		<td><img src="\images\vote_automata\area_rule_0001100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100101.png"></td>
	</tr>
	<tr>
		<td>0000010101</td>
		<td><img src="\images\vote_automata\area_rule_0000010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010101.png"></td>
	</tr>
	<tr>
		<td>0001010101</td>
		<td><img src="\images\vote_automata\area_rule_0001010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010101.png"></td>
	</tr>
	<tr>
		<td>0000110101</td>
		<td><img src="\images\vote_automata\area_rule_0000110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110101.png"></td>
	</tr>
	<tr>
		<td>0001110101</td>
		<td><img src="\images\vote_automata\area_rule_0001110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110101.png"></td>
	</tr>
	<tr>
		<td>0000001101</td>
		<td><img src="\images\vote_automata\area_rule_0000001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001101.png"></td>
	</tr>
	<tr>
		<td>0001001101</td>
		<td><img src="\images\vote_automata\area_rule_0001001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001101.png"></td>
	</tr>
	<tr>
		<td>0000101101</td>
		<td><img src="\images\vote_automata\area_rule_0000101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101101.png"></td>
	</tr>
	<tr>
		<td>0001101101</td>
		<td><img src="\images\vote_automata\area_rule_0001101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101101.png"></td>
	</tr>
	<tr>
		<td>0000011101</td>
		<td><img src="\images\vote_automata\area_rule_0000011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011101.png"></td>
	</tr>
	<tr>
		<td>0001011101</td>
		<td><img src="\images\vote_automata\area_rule_0001011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011101.png"></td>
	</tr>
	<tr>
		<td>0000111101</td>
		<td><img src="\images\vote_automata\area_rule_0000111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111101.png"></td>
	</tr>
	<tr>
		<td>0001111101</td>
		<td><img src="\images\vote_automata\area_rule_0001111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111101.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111101.png"></td>
	</tr>
	<tr>
		<td>0000000011</td>
		<td><img src="\images\vote_automata\area_rule_0000000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000011.png"></td>
	</tr>
	<tr>
		<td>0001000011</td>
		<td><img src="\images\vote_automata\area_rule_0001000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000011.png"></td>
	</tr>
	<tr>
		<td>0000100011</td>
		<td><img src="\images\vote_automata\area_rule_0000100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100011.png"></td>
	</tr>
	<tr>
		<td>0001100011</td>
		<td><img src="\images\vote_automata\area_rule_0001100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100011.png"></td>
	</tr>
	<tr>
		<td>0000010011</td>
		<td><img src="\images\vote_automata\area_rule_0000010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010011.png"></td>
	</tr>
	<tr>
		<td>0001010011</td>
		<td><img src="\images\vote_automata\area_rule_0001010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010011.png"></td>
	</tr>
	<tr>
		<td>0000110011</td>
		<td><img src="\images\vote_automata\area_rule_0000110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110011.png"></td>
	</tr>
	<tr>
		<td>0001110011</td>
		<td><img src="\images\vote_automata\area_rule_0001110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110011.png"></td>
	</tr>
	<tr>
		<td>0000001011</td>
		<td><img src="\images\vote_automata\area_rule_0000001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001011.png"></td>
	</tr>
	<tr>
		<td>0001001011</td>
		<td><img src="\images\vote_automata\area_rule_0001001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001011.png"></td>
	</tr>
	<tr>
		<td>0000101011</td>
		<td><img src="\images\vote_automata\area_rule_0000101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101011.png"></td>
	</tr>
	<tr>
		<td>0001101011</td>
		<td><img src="\images\vote_automata\area_rule_0001101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101011.png"></td>
	</tr>
	<tr>
		<td>0000011011</td>
		<td><img src="\images\vote_automata\area_rule_0000011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011011.png"></td>
	</tr>
	<tr>
		<td>0001011011</td>
		<td><img src="\images\vote_automata\area_rule_0001011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011011.png"></td>
	</tr>
	<tr>
		<td>0000111011</td>
		<td><img src="\images\vote_automata\area_rule_0000111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111011.png"></td>
	</tr>
	<tr>
		<td>0001111011</td>
		<td><img src="\images\vote_automata\area_rule_0001111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111011.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111011.png"></td>
	</tr>
	<tr>
		<td>0000000111</td>
		<td><img src="\images\vote_automata\area_rule_0000000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110000111.png"></td>
	</tr>
	<tr>
		<td>0001000111</td>
		<td><img src="\images\vote_automata\area_rule_0001000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111000111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111000111.png"></td>
	</tr>
	<tr>
		<td>0000100111</td>
		<td><img src="\images\vote_automata\area_rule_0000100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110100111.png"></td>
	</tr>
	<tr>
		<td>0001100111</td>
		<td><img src="\images\vote_automata\area_rule_0001100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111100111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111100111.png"></td>
	</tr>
	<tr>
		<td>0000010111</td>
		<td><img src="\images\vote_automata\area_rule_0000010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110010111.png"></td>
	</tr>
	<tr>
		<td>0001010111</td>
		<td><img src="\images\vote_automata\area_rule_0001010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111010111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111010111.png"></td>
	</tr>
	<tr>
		<td>0000110111</td>
		<td><img src="\images\vote_automata\area_rule_0000110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110110111.png"></td>
	</tr>
	<tr>
		<td>0001110111</td>
		<td><img src="\images\vote_automata\area_rule_0001110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111110111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111110111.png"></td>
	</tr>
	<tr>
		<td>0000001111</td>
		<td><img src="\images\vote_automata\area_rule_0000001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110001111.png"></td>
	</tr>
	<tr>
		<td>0001001111</td>
		<td><img src="\images\vote_automata\area_rule_0001001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111001111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111001111.png"></td>
	</tr>
	<tr>
		<td>0000101111</td>
		<td><img src="\images\vote_automata\area_rule_0000101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110101111.png"></td>
	</tr>
	<tr>
		<td>0001101111</td>
		<td><img src="\images\vote_automata\area_rule_0001101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111101111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111101111.png"></td>
	</tr>
	<tr>
		<td>0000011111</td>
		<td><img src="\images\vote_automata\area_rule_0000011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110011111.png"></td>
	</tr>
	<tr>
		<td>0001011111</td>
		<td><img src="\images\vote_automata\area_rule_0001011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111011111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111011111.png"></td>
	</tr>
	<tr>
		<td>0000111111</td>
		<td><img src="\images\vote_automata\area_rule_0000111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1000111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0100111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1100111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0010111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1010111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0110111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1110111111.png"></td>
	</tr>
	<tr>
		<td>0001111111</td>
		<td><img src="\images\vote_automata\area_rule_0001111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1001111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0101111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1101111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0011111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1011111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_0111111111.png"></td>
		<td><img src="\images\vote_automata\area_rule_1111111111.png"></td>
	</tr>
</table>