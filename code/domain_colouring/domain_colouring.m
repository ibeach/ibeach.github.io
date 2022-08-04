close all;
clear all;

file_name = 'qc_test';

save_file = 0;

y_ran = 3;
x_ran = 3;

colouring = 1;
color_res = 300;

grid = 0;
grid_ran = 1.5;
grid_num = 200;
grid_res = 500;

circles = 1;
circle_ran = 3;
circle_num = 100;
circle_res = 500;

% get points in complex plane
z = get_complex_plane(x_ran, y_ran, color_res);
    
hold on;
if colouring == 1
    % get domain colouring
    c_pts = get_domain_colouring(z);
    colormap hsv;
    caxis([0,1]);
    fig = pcolor(real(z),imag(z),c_pts);
    fig.EdgeColor = 'None'; 
end
if grid == 1
    % get grid lines
    [x_lines, y_lines] = get_grid(x_ran, y_ran, grid_res, grid_ran, grid_num);
    plot(x_lines,'-k');
    plot(y_lines,'-k');
end
if circles == 1
    % get circle lines
    circle_pts = get_circles(circle_res, circle_ran, circle_num);
    plot(real(circle_pts),imag(circle_pts),'-b');
end

% fix axes
xlim([-x_ran,x_ran]);
ylim([-y_ran,y_ran]);

if save_file
    % print fig
    print(gcf, file_name, '-dpng', '-r150', '-opengl');
end

function q = f(z)

    q = exp(z.^2);
end

function theta = angle_complex(z)

    theta = angle(z);
    theta(theta < 0) = theta(theta < 0) + 2*pi;
end

function c_pts = get_domain_colouring(z)

    c_pts = angle_complex(f(z))./2./pi;
end

function z = get_complex_plane(x_ran, y_ran, grid_res)

    x_inc = 2*x_ran/grid_res;
    y_inc = 2*y_ran/grid_res;
    x_pts = -x_ran:x_inc:x_ran;
    y_pts = -y_ran:y_inc:y_ran;
    [x,y] = meshgrid(x_pts,y_pts);
    z = x + 1j.*y;
end

function [x_lines, y_lines] = get_grid(x_ran, y_ran, grid_res, grid_ran, grid_num)
    
    y_inc = 2*y_ran/grid_res;
    x_inc = 2*x_ran/grid_num;

    x_grid = -grid_ran:x_inc:grid_ran;
    y_grid = -grid_ran:y_inc:grid_ran;

    % make horizontal and vertical lines
    [xx_grid,xy_grid] = meshgrid(x_grid,y_grid);

    x_lines = f((xx_grid+1j.*xy_grid));
    y_lines = f((xy_grid+1j.*xx_grid));
end

function circle_pts = get_circles(circle_res, circle_ran, circle_num)

    theta = 0:2*pi/circle_res:2*pi;
    r = 0:circle_ran/circle_num:circle_ran;
    [r_grid,theta_grid] = meshgrid(r,theta);
    circle_pts = r_grid.*exp(1j.*(theta_grid));
    circle_pts = f(circle_pts);
end