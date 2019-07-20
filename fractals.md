---
title: Fractals
---

This is a gallery of fractals that I have made with MATLAB and Python. 
Much of the inspiration for these images comes from Pickover's <i>Computers, Pattern, Chaos and Beauty</i>.

<h2>Polynomials</h2>
The pictures below are Julia sets represented by various polynomial functions.
Take a look at the effect of degree on the pictures below.

<img src="\images\fractals\poly_four.png">
<img src="\images\fractals\poly_five.png">
<img src="\images\fractals\poly_six.png">
<img src="\images\fractals\poly_seven.png">

Of course, there's nothing wrong with the standard quadratic Julia set.

<img src="\images\fractals\z.^2+complex(-0.8,0.156).png">
	
<h2>Cosh and Sinh</h2>
These are hyperbolic cosine fractals.

<img src="\images\fractals\(cmath.cosh(z))+complex(0,-0.9).png">	
<img src="\images\fractals\(cmath.cosh(z))+complex(0.4,0.6).png">

Combining holomorphic and non-holomorphic functions can produce some very interesting results.

<img src="\images\fractals\cosh(z)+complex(0.1,0.9).abs(z).png">

<h2>The Burning Ship</h2>
Here are some Burning Ship inspired fractals. 
The three below are produced by iterating cosh(z)+|z|*c, where c is the location of the initial point.

<img src="\images\fractals\cosh(z)+abs(z).z0.png">
<img src="\images\fractals\cosh(z)+abs(z).z0_zoom.png">	
<img src="\images\fractals\cosh(z)+abs(z).z0_zoom2.png">
	
These two are "failed attempts" caused by buggy code, but are still pretty interesting.

<img src="\images\fractals\alt_burning_ship.png">	
<img src="\images\fractals\alt_burning_ship_zoom.png">

<h2>Different Colour Maps</h2>
Here are different colourings of the same fractal. 
These were made in MATLAB using the colourmaps "hot" and "flag".

<img src="\images\fractals\cosh(z)+complex(0.1,-0.6).png">
<img src="\images\fractals\flag.png">
