clear all;

ops.thresh = 100;
ops.maxIters = 2^10;
ops.convergeType = 1;
ops.colourType = 1;
set(gcf,'renderer','OpenGL')
colormap_pick = bone(256);
% colormap_pick = othercolor('PuBu6',256);

animateFractal = 0;

ops.julia_fractal = 1;

res = 1000; % pixels per edge

frame_num = 150;
if ~animateFractal
    frame_num = 1;
end

if ops.julia_fractal
    a_range = 0.08;%-2:1/5:2;
    b_range = -0.96;%-1;%-2:1/5:2;
else
    a_range = 0;
    b_range = 0;
end

for n = 1:frame_num
    for a = a_range
        for b = b_range

            scale = 1;
            centre = [0,0];%[0.001643721971153,-0.822467633298876];

            res_const = 1/100;
            basex = -1;
            basey = -1;
%             ops.c = complex(a,b);
%             ops.c = complex(basex+n*res_const,basey+n*res_const);
            ops.c = complex(a,b);

            xplotmin = -1*scale+centre(1);
            xplotmax = 1*scale+centre(1);
            yplotmax = -1*scale+centre(2);
            yplotmin = 1*scale+centre(2);
            xpoints = linspace(xplotmin,xplotmax,res);
            ypoints = linspace(yplotmin,yplotmax,res);
            
            colourset = convergecheck(xpoints, ypoints, ops);

            if ops.colourType == 2
                colourset(mod(colourset,2) == 0) = ops.maxIters;
            end

            filename = 'test';
            if ~ops.julia_fractal
                filename = [filename, '_mandelbrot'];
            else
                filename = [filename, num2str(ops.c)];
            end
            colourset = mod(colourset,256)+1;
            if animateFractal
                colourset = mod(colourset,256)+1;
                filename = [filename, '_video'];
                if n == 1 
                    imwrite(colourset, colormap_pick, [filename,'.gif'], 'gif', 'Loopcount',inf); 
                else
                    imwrite(colourset, colormap_pick, [filename,'.gif'], 'gif','WriteMode', 'append', 'DelayTime',0.001);
                end 
                disp(['Frame ', num2str(n), ' saved.']);
            else
        %         colormap jet
        %         imagesc(colourset)
        %         axis off;
        %         saveas(gcf,'BarChartFile.png')
                imwrite(colourset, colormap_pick, [filename,'.png'], 'png');
                disp(['File ', filename,' saved.']);
            end
        end
    end
end

function x = mandel(z,z0,ops)
%      x = cosh(z) + abs(z).*z0;
%      x = cosh(z.^2).*z0 + abs(z).*z0;
%      x = exp(z0+z).*cosh(z);
%      x = z0.*exp(z);
%      x = z0.^(z) + z.^(z0);
%      x = z.^3 + ops.c.*z + z0;
%      x = z.^2 + z0;
%      x = z.^2 + z0;
%     x = (abs(real(z))+1j*abs(imag(z))).^2+z0;
%     x = cosh(z)+ z0.*abs(z);
    x = cosh(z)+ z0.*z;
end

function x = julia(z,o)
%     x = z.^2+complex(-0.8,0.156); % julia set
%     x = (abs(real(z))+1i*abs(imag(z))).^2+complex(-1.762,-0.028); % burning ship
%     x = z - (z.^8 +15.*z.^4-16)./(8.*z.^7 +15*4.*z.^3); % newton
%     x = conj(z).^2 +complex(-0.6,0.5); % tricorn
%     x = conj(z).*cosh(z).^2 + complex(-0.08,-0.0156);
%     x = conj(z).^2.*cosh(z).^2 + complex(0.9,-0.0756);
%     x = real(z)+complex(0.1,0.3).*z;
%     x = z.^2+ o.c;
%     x = cosh(z)+ o.c;
%     x = (cosh(z)+ o.c)+1j.*(sinh(z)+ o.c);
%     x = real(z)./cos(real(z)) + 1j*imag(z)./sin(imag(z))+ o.c;
%     x = o.c + tanh(z.^2) + exp(z);
%      x = o.c*exp(z.^2).*z;
%     x = (abs(real(z))+1j*abs(imag(z))).^2+o.c;
%      x = o.c.^(z).*z.^(o.c);
%     x = cosh(z)+ o.c.*abs(z);
    x = cosh(z).^7+ o.c;

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