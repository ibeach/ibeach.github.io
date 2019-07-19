function [z,centre,r] = get_geo_disk(pts,res)
    if abs(imag(pts(1)/pts(2))) < 1e-10 || any(pts == 0)
        % colinear w/ zero
        r = NaN;
        if abs(real(pts(1)-pts(2))) < 1e-15
            %vertical line
            centre = NaN;
            y = linspace(imag(pts(1)),imag(pts(2)),res);
            z = real(pts(1))+1j.*y;
        else
            %other line
            x = linspace(real(pts(1)),real(pts(2)),res);
            slope = imag(pts(2)-pts(1))/real(pts(2)-pts(1));
            centre = slope;
            z = x + 1j.*(slope.*x);
            if ~any(pts == 0)
                'tick' % this shouldn't happen
            end
        end
    else
        pt_inv = conj(1/pts(2));        
        if norm(pts(1)) > 1-1e-12 && norm(pts(2)) > 1-1e-12 
            % both pts on bdy, need to use tangent line
            slope_1 = -real(pts(1))/imag(pts(1)); %tangent at pt1
            slope_2 = -real(pts(2))/imag(pts(2)); %tangent at pt2
            midp_1 = pts(1);
            midp_2 = pts(2);
            b_1 = imag(midp_1)-slope_1*real(midp_1);
            b_2 = imag(midp_2)-slope_2*real(midp_2);
        else
            if norm(pts(2)) > 1-1e-15 
                pt_inv = conj(1/pts(1));
            end
            slope_1 = -real(pts(1)-pt_inv)/imag(pts(1)-pt_inv);
            slope_2 = -real(pts(2)-pts(1))/imag(pts(2)-pts(1));
            midp_1 = (pts(1)+pt_inv)/2;
            midp_2 = (pts(1)+pts(2))/2;
            b_1 = imag(midp_1)-slope_1*real(midp_1);
            b_2 = imag(midp_2)-slope_2*real(midp_2);
        end
        if abs(slope_1) > 1e12 || isinf(slope_1)
%             x_centre = real((pts(1)+pt_inv)/2);
            x_centre = real(midp_1);
            y_centre = slope_2*x_centre + b_2;
        elseif abs(slope_2) > 1e12 || isinf(slope_2)
%             x_centre = real((pts(1)+pts(2))/2);
            x_centre = real(midp_2);
            y_centre = slope_1*x_centre + b_1;
        else
            b_1 = imag(midp_1)-slope_1*real(midp_1);
            b_2 = imag(midp_2)-slope_2*real(midp_2);
            x_centre = (b_1-b_2)/(slope_2-slope_1);
            y_centre = slope_1*x_centre + b_1;
        end
        centre = x_centre + 1j.*y_centre;
        r = norm(x_centre+1j*y_centre - pts(1));
        angles = sort(angle(pts-centre));
        if angles(2)-angles(1) > pi 
            if angles(1) == -pi
                theta1 = -pi;
                theta2 = linspace(angles(2),pi,res-1);
            else
                if angles(2) == pi
                    theta1 = linspace(-pi,angles(1),res-1);
                    theta2 = pi;
                else
                    theta1 = linspace(-pi,angles(1),res/2);
                    theta2 = linspace(angles(2),pi,res/2);
                end
            end
            theta = [fliplr(theta1),fliplr(theta2)];
        else
            theta = linspace(angles(2),angles(1),res);
        end
        z = r.*exp(1j.*theta) + centre ;
    end
end