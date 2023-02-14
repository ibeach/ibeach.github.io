clear all;

params.euler = 0;
params.stormer = 0;
params.odesolver = 1;

params.iterations = 500;
params.dt = 1/175;

ogcNum = 10;
ogcEnergy = 0.5;

plotResolution = 1/100;
plotRange = 1.01;
plotX = -plotRange:plotResolution:plotRange;
plotY = plotX;

levelSetNum = 300;
levelSetSpacing = 1/10;

q0List = [0.75; 0];

levelSetRange = ogcEnergy:-levelSetSpacing:(ogcEnergy-levelSetSpacing*levelSetNum);
q0ValueV = V(q0List(1), q0List(2));
speed = sqrt(2*(ogcEnergy - q0ValueV));
thetaRange = linspace(0, 2*pi, ogcNum);
p0List = speed.*[cos(thetaRange); sin(thetaRange)];

figure(1);
clf(1);
hold on;

for qi = 1:numel(q0List(1, :))
    q0 = q0List(:, qi);
    for p_i = 1:numel(p0List(1, :))
        p0 = p0List(:, p_i);
        [p, q] = runSolver(p0, q0, params);
        plot(q(1, :), q(2, :), '-k');
    end
    scatter(q0(1), q0(2), '*r');
end

[meshX, meshY] = meshgrid(plotX, plotY);
meshZ = V(meshX, meshY);
contour(meshX, meshY, meshZ, levelSetRange, '-');
contour(meshX, meshY, meshZ, [ogcEnergy, ogcEnergy], '-r');

function output = V(x, y)
    output = (x.^2+y.^2)./2;
end

function output = gradV(x, y)
    dx = x;
    dy = y;
    output = [dx'; dy'];
end

function [p, q] = runSolver(p0, q0, params)

    p = zeros(2, params.iterations);
    q = zeros(2, params.iterations);
    dt = params.dt;
    
    if params.euler
        p(:, 1) = p0;
        q(:, 1) = q0;
        for i = 2:params.iterations
            p(:, i) = p(:, i-1) - dt*gradV(q(1, i-1), q(2, i-1));
            A = eye(numel(q(:, i-1)));
            q(:, i) = q(:, i-1) + dt*A*p(:, i);    
        end
    elseif params.stormer
        q(:, 1) = q0;
        q(:, 2) = q0 + p0*dt - 0.5*gradV(q(1, 1), q(2, 1))*dt^2;
        for i = 3:params.iterations
            q(:, i) = 2*q(:, i-1) - q(:,i-2) - (dt^2)*gradV(q(1, i - 1), q(2, i - 1));
        end
    elseif params.odesolver
        tspan = [0, dt.*params.iterations];
        [~,y] = ode45(@(t, y) dydt(y), tspan, [q0', p0']);
        q = y(:, 1:2)';
        p = y(:, 3:4)';
    end

end

function dy = dydt(y)
    % y(1:2) = q and y(3:4) = p
    dy = zeros(size(y));
    dy(1:2) = y(3:4);
    dy(3:4) = -gradV(y(1), y(2));
end