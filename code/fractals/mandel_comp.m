clear all;

ops.thresh = 100;
ops.maxIters = 255;
ops.convergeType = 1;
ops.colourType = 1;
ops.julia_fractal = 1;
colormap_pick = [bone(255);[1,0,0]];
% colormap_pick = othercolor('PuBu6',256);

res = 250; % pixels per edge
scale = 2;
centre = [0,0];
xplotmin = -1*scale+centre(1);
xplotmax = 1*scale+centre(1);
yplotmax = -1*scale+centre(2);
yplotmin = 1*scale+centre(2);
xpoints = linspace(xplotmin,xplotmax,res);
ypoints = linspace(yplotmin,yplotmax,res);

frame_num = 150;

ops_mandel = ops;
ops_mandel.julia_fractal = 0;
colourset_mandel = convergecheck(xpoints, ypoints, ops_mandel);
% colourset_mandel = mod(colourset_mandel,255)+1;

for n = 1:frame_num
    
    w = n + 50;
    ops.c = complex(xpoints(w), ypoints(w));

    colourset = convergecheck(xpoints, ypoints, ops);

    if ops.colourType == 2
        colourset(mod(colourset,2) == 0) = ops.maxIters;
    end

    filename = 'julia_mandelbrot_comp';
    colourset_mandel_alt =  colourset_mandel;
    colourset_mandel_alt(w,w) = 256;
    colourset = [colourset, colourset_mandel_alt];
    if n == 1 
        imwrite(colourset, colormap_pick, [filename,'.gif'], 'gif', 'Loopcount',inf); 
    else
        imwrite(colourset, colormap_pick, [filename,'.gif'], 'gif','WriteMode', 'append', 'DelayTime',0.001);
    end 
    disp(['Frame ', num2str(n), ' saved.']);
end

function x = mandel(z,z0,ops)
    x = z.^2 + z0;
end

function x = julia(z,o)
    x = z.^2 + o.c;
end

function colours = convergecheck(xx,yy,o)
    [x,y] = meshgrid(xx,yy);
    z = complex(x,y);
    zinit = z;
    iters = 0;
    colours = zeros(length(xx));
    check = ones(size(z));
    if o.convergeType == 1
        while iters < o.maxIters && any(any(check))
            if o.julia_fractal
                z(check) = julia(z(check),o);
            else
                z(check) = mandel(z(check),zinit(check),o);
            end
            colours(check) = colours(check)+1;
            check = abs(z) < o.thresh;
            iters = iters+1;
        end
    elseif o.convergeType == 2
        while iters < o.maxIters && any(any(check))
            check = and(abs(real(z)) < o.thresh/2, abs(imag(z))< o.thresh/2);
            if o.julia_fractal
                z(check) = julia(z(check),o);
            else
                z(check) = mandel(z(check),zinit(check),o);
            end
            colours(check) = colours(check)+1;
            iters = iters+1;
        end
    end
end