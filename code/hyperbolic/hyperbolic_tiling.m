% code by Isabel Beach
% Will save a suitably-named png of your chosen hyperbolic tiling with a semi-random colourmap.
% To get more tiles, increase the relevant value of "gens" in get_tiling
%
% Not fully optimized by any means and was never meant to see the light of day
% TODO: edit code for readability and fix redundancies

clear all;

% ------------------------
% Settings
% ------------------------

pmin = 4; % schlafli symbol p range. must be >= 3
pmax = 10; % set equal to pmin if you just want 1 picture
qmin = 5; % schlafli symbol q range. must be >= 3
qmax = 10; % set equal to qmin if you just want 1 picture

% smin = 3;
% smax = 10;

modes.map = 1; % makes animations of maps
modes.animate = 0; % makes animation of each frame instead of saving pngs
modes.triangle = 0; % doesn't work yet
modes.orbifold = 0; % doesn't work yet
modes.dual = 0; % makes dual tiling
modes.infinity = 0; % makes ideal polygon tiling of given p value
modes.sl2z = 0; % make sl(2,z) tiling
modes.torus = 0; % make punctured torus tiling

modes.res = 100; % number of points to draw on a line
modes.frame_num = 5; % number of frames for mapping animation
modes.ran = 50; % length of words to calculate for SL(2,Z) mode

% for map mode:

% modes.map_choice = [1,-1j;1,1j]*[0.9,0;0,1/0.9]*[1j,1j;-1,1];
% modes.map_name = 'hyperbolic';

% k = 0.95;
% u = 0.5;
% modes.map_choice = [1,-1j;1,1j]*[k,(k^2-1)/u;u,k]*[1j,1j;-1,1];
% modes.map_name = 'elliptic';

modes.map_choice = [1,-1j;1,1j]*[1,0.1;0,1]*[1j,1j;-1,1];
modes.map_name = 'parabolic';

% ------------------------
% ------------------------

f = figure('visible','off');

if ~modes.orbifold && ~modes.sl2z && ~modes.torus && ~modes.map
    modes.frame = 1;
    for p = pmin:pmax
        if ~modes.infinity
            for q = qmin:qmax
                if (p-2)*(q-2) > 4
                    main_func(p,q,modes);
                    modes.frame = modes.frame + 1;
                end
            end
        else
            main_func(p,100,modes);
        end
    end
elseif modes.map
    p = pmin;
    q = qmin;
    tiling = main_func(p,q,modes); % get tiling
    modes.poly_name = [num2str(p),'_',num2str(q),'_',modes.map_name,'.gif'];
    animate_tiling(tiling,modes); 
elseif modes.orbifold
    for p = pmin:pmax
        for q = qmin:qmax
            for s = smin:smax
                 main_func(p,q,modes,s);
            end
        end
    end
elseif modes.torus
	main_func(4,100,modes);
elseif modes.sl2z
    main_func(3,100,modes);
end

function tile_list = main_func(p,q,modes,s)
    
    % ------------------------
    % Generate Initial Tile
    % ------------------------
    
    if ~modes.orbifold && ~modes.sl2z
        gen_list = [0,0,5,5,5,4,3,3,3,3]; % length of word by p value
        gens = gen_list(p);
        if modes.triangle
            gens = 3;
            p = 3;
        end       
        if modes.infinity
            gens = gens + 3;
        end       
        if modes.dual
            gens = 5;
        end    
        if modes.torus
            gens = 5;
            modes.infinity = 1; %short-cut to get fundamental domain from get_initial_poly
        end
        poly_1 = get_initial_poly(p,q,modes);
        if modes.dual
            v = zeros(q,1);
            flip_pts = poly_1([1,2]);
            [~,xc,rc] = get_geo_disk(flip_pts,2);
            [a1,b1,c1,d1] = get_refl(xc,rc);
            v(1) = 0;
            for flip = 2:q
                v(flip) = mobius(v(flip-1),[a1,b1,c1,d1]);
            end
            poly_1 = [v; v(1)];
        end
    elseif modes.orbifold
        poly_1 = get_triangle(2*pi/p, 2*pi/q, 2*pi/s);
    elseif modes.sl2z
        x1 = 0.5 + 1j*sqrt(3)/2;
        x1 = (x1-1j)./(x1+1j);
        x2 = -0.5 + 1j*sqrt(3)/2;
        x2 = (x2-1j)./(x2+1j);
        poly_1 = [1, x1, x2, 1];
    end
    
    % ------------------------
    % Generate Tiling
    % ------------------------
    
    if modes.sl2z
        maps = populate_sl2z(modes.ran);
        graph_poly = get_poly(poly_1,modes.res);
        tile_list = mobius(graph_poly,maps);
        color_list = rand(numel(maps(:,1)),1);
    else
        [maps,colors] = get_tiling(poly_1,gens,modes);
        [~, maps_index] = uniquetol([real(maps),imag(maps)],1e-15,'ByRows',true);
        graph_poly = get_poly(poly_1,modes.res);
        tile_list = mobius(graph_poly ,maps(maps_index,:));
        color_list = colors(maps_index);
    end
    
    % ------------------------
    % Graphing
    % ------------------------

    if ~modes.map % animating maps is handled by its own function

        clf();
        hold on;
        axis off;
        xlim([-1,1]);
        ylim([-1,1]);
        ax = gca;
        outerpos = ax.OuterPosition;
        ti = ax.TightInset; 
        left = outerpos(1) + ti(1);
        bottom = outerpos(2) + ti(2);
        ax_width = outerpos(3) - ti(1) - ti(3);
        ax_height = outerpos(4) - ti(2) - ti(4);
        ax.Position = [left bottom ax_width ax_height];

        colormap_choice = randi([1,6]);
        if colormap_choice == 1
            colormap parula;
        elseif colormap_choice == 2
            colormap jet;
        elseif colormap_choice == 3
            colormap hsv;
        elseif colormap_choice == 4
            colormap hot;
        elseif colormap_choice == 5
            colormap cool;
        else
            colormap spring;
        end

        plot(cos(linspace(0,2*pi,300)),sin(linspace(0,2*pi,300)),'-k')
        patch(real(tile_list'), imag(tile_list'), color_list);
        
        clear maps graph_poly maps_index color_list colors

        if ~modes.animate
            if modes.sl2z
                poly_name = 'slz2.png';
            elseif modes.torus
                poly_name = 'torus.png';
            elseif modes.orbifold
                poly_name = [num2str(p),'_',num2str(q),'_',num2str(s),'.png'];
            elseif modes.infinity
                poly_name = [num2str(p),'_inf.png'];
            elseif modes.triangle
                poly_name = [num2str(p),'_',num2str(q),'_tri.png'];
            elseif modes.dual
                poly_name = [num2str(p),'_',num2str(q),'_dual.png'];
            else
                poly_name = [num2str(p),'_',num2str(q),'.png'];
            end
        else
            poly_name = 'tiling_animation.gif';
        end
        
        % write file
        if ~modes.animate
            disp('Tiling generated. Saving figure...');
            print(gcf, poly_name, '-dpng', '-r300');
            disp(['File ', poly_name, ' saved.']);
        else
            current_frame = frame2im(getframe); 
            [colourset,colormap_frame] = rgb2ind(current_frame,256); 
            if modes.frame == 1 
                imwrite(colourset, colormap_frame, poly_name, 'gif', 'Loopcount', inf); 
            else
                imwrite(colourset, colormap_frame, poly_name, 'WriteMode', 'append');
            end 
            disp(['Frame ', num2str(modes.frame),' saved.']);
        end
    end
end

function animate_tiling(tile_input, modes)

    % find fixedpoint
    a1 = modes.map_choice(1,1);
    b1 = modes.map_choice(1,2);
    c1 = modes.map_choice(2,1);
    d1 = modes.map_choice(2,2);
    fp(1) = ((a1-d1) + sqrt((a1-d1)^2 + 4*b1*c1))/(2*c1);
    fp(2) = ((a1-d1) - sqrt((a1-d1)^2 + 4*b1*c1))/(2*c1);
    fp = fp(abs(fp) <= 1);
        
    for frame = 1:modes.frame_num   
        clf();
        hold on;
        axis off;
        xlim([-1,1]);
        ylim([-1,1]);
        ax = gca;
        outerpos = ax.OuterPosition;
        ti = ax.TightInset; 
        left = outerpos(1) + ti(1);
        bottom = outerpos(2) + ti(2);
        ax_width = outerpos(3) - ti(1) - ti(3);
        ax_height = outerpos(4) - ti(2) - ti(4);
        ax.Position = [left bottom ax_width ax_height];
        
        % apply map
        if frame == 1
            map_frame = [1,0,0,1];
        else
            map_frame = (modes.map_choice)^(frame-1);
            map_frame = [map_frame(1,1), map_frame(1,2), map_frame(2,1), map_frame(2,2)];
        end
        tile_list = mobius(tile_input,map_frame);

        plot(cos(linspace(0,2*pi,300)), sin(linspace(0,2*pi,300)), '-k')
        plot(real(tile_list'), imag(tile_list'), '-k');
        scatter(real(fp), imag(fp), '.r');

        current_frame = frame2im(getframe); 
        [colourset,colormap_frame] = rgb2ind(current_frame,256); 
        if frame == 1 
            imwrite(colourset, colormap_frame, modes.poly_name, 'gif', 'Loopcount', inf); 
        else
            imwrite(colourset, colormap_frame, modes.poly_name, 'WriteMode', 'append');
        end 
        disp(['Frame ', num2str(frame),' saved.']);
    end
    
end

function poly_out = get_initial_poly(p,q,modes)

    rr = sqrt(( cos(pi/p+pi/q)*cos(pi/q) )...
        /( sin(2*pi/q)*sin(pi/p)+cos(pi/p+pi/q)*cos(pi/q) ));
    if modes.infinity
        rr = 1;
    end
    theta = linspace(0,2*pi,p+1)';
    poly_out = rr.*exp(theta*1j);
    if modes.triangle
        poly_out = [poly_out([1,2]);0;poly_out(1)];
    end
end

function [maps_out, colors_out] = get_tiling(poly_in,gens,modes)
    
    p = numel(poly_in)-1;
    a = zeros(p,1);
    b = zeros(p,1);
    c = zeros(p,1);
    d = zeros(p,1);
    if modes.torus
        cayley_map = [1,-1j;1,1j];
        cayley_inverse = [-1j,1j;1,1];
        map1    = cayley_map*[1,1;1,2]*cayley_inverse;
        map1inv = cayley_map*[2,-1;-1,1]*cayley_inverse;
        map2    = cayley_map*[1,-1;-1,2]*cayley_inverse;
        map2inv = cayley_map*[2,1;1,1]*cayley_inverse;
        map1 = [map1(1,1), map1(1,2), map1(2,1), map1(2,2)];
        map1inv = [map1inv(1,1), map1inv(1,2), map1inv(2,1), map1inv(2,2)];
        map2 = [map2(1,1), map2(1,2), map2(2,1), map2(2,2)];
        map2inv = [map2inv(1,1), map2inv(1,2), map2inv(2,1), map2inv(2,2)];
        maps = [map1; map1inv; map2; map2inv];
        a = maps(:,1);
        b = maps(:,2);
        c = maps(:,3);
        d = maps(:,4);
    else
        for pp = 1:p
            flip_pts = poly_in([pp,pp+1]);
            [~,xc,rc] = get_geo_disk(flip_pts,2);
            [a1,b1,c1,d1] = get_refl(xc,rc);
            a(pp) = a1;
            b(pp) = b1;
            c(pp) = c1;
            d(pp) = d1;
        end
    end

    map_list = gen_words(2*p,gens);
    maps_out = zeros(numel(map_list),4);
    colors_out = zeros(numel(map_list),1);
    
    i = 1;
    for g = 1:numel(map_list(:,1))
        map = [1,0;0,1];
        ii = 0;
        for m = map_list(g,:)
            if m == 0 %TODO: I think this is obsolete?
                continue
            end
            ii = ii + 1;
            w = floor((m+1)/2);
            if mod(m,2) == 0
                map_m = [a(w),b(w);c(w),d(w)];
            else
                map_m = [d(w),-b(w);-c(w),a(w)];
            end
            map = map*map_m;
            maps_out(i,:) = [map(1,1),map(1,2),map(2,1),map(2,2)];
            colors_out(i) = ii;%abs(map(1,1)+map(2,2));
            i = i + 1;
        end
    end
end

function q = mobius(z,coeff)
    size_input = size(coeff);
    if  size_input(1) == 1 % 1 map, many polygons
        a = coeff(1);
        b = coeff(2);
        c = coeff(3);
        d = coeff(4);
        q = (a.*z+b)./(c.*z+d);
    else % 1 polygon, many maps
        a = coeff(:,1);
        b = coeff(:,2);
        c = coeff(:,3);
        d = coeff(:,4);
        q = zeros(numel(a),numel(z));
        for i = 1:numel(z)
            q(:,i) = (a.*z(i)+b)./(c.*z(i)+d);
        end
    end
end

function [a,b,c,d] = get_refl(xc,rc)
    if isnan(rc)
        if isnan(xc)
            %vertical radial line
            a = -1;
            b = 0;
            c = 0;
            d = 1;
        else
            if xc < 1e-15
            %horizontal radial line
                a = 1;
                b = 0;
                c = 0;
                d = 1;
            else
            %skew radial line
                ang = atan(xc);
                a = conj(exp(-1j*ang)).*exp(1j*ang);
                b = 0;
                c = 0;
                d = 1;
            end
        end
    else
%         q = xc+rc^2./conj(z-xc);
        a = xc;
        b = rc^2-conj(xc)*xc;
        c = 1;
        d = -conj(xc);
    end
end

function perim = get_poly(verts,res)
    perim = [];
    for j = 1:numel(verts)-1
        pt1 = verts(j);
        pt2 = verts(j+1);
        geo_seg = get_geo_disk([pt1,pt2],res);
        if norm(geo_seg(end) - pt2) > 1e-10
            geo_seg = fliplr(geo_seg);
        end
        perim = [perim,geo_seg];
    end
end

function maps = populate_sl2z(ran)
    maps = [];
    cayley_map = [1,-1j;1,1j];
    cayley_inverse = [-1j,1j;1,1];
    for a = 0:ran
        for b = -ran:ran
            for c = -ran:ran
                for d = -ran:ran
                    if a*d-b*c == 1
                        map_temp = cayley_map*[a,b;c,d]*cayley_inverse;
                        maps = [maps; map_temp(1,1),map_temp(1,2),map_temp(2,1),map_temp(2,2)];
                    end
                end
            end
        end
    end
end