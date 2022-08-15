% Code by Isabel Beach 
% Simulate a pursuit curve with the desired specifications.
% timeFinal: number of steps to run the simulation for.
% saveImage: logical determining if you want to save a png of the image.
% filename: string of desired filename (excluding file type extension).
% imageStyle: number determining how to plot the simulation
%               1: Draw trajectory of each pursuer.
%               2: Draw a line between each pursuer and its prey at each time step.
% speed: real number determining how far each pursuer moves per time step
% pursuerNum: number of pursuers
% preyOffset: number determining the prey of each pursuer. Each pursuer 
%             chases the pursuer preyOffset+1 places to its right.


timeFinal = 300;
saveImage = 1;
filename = 'pursuit';
imageStyle = 1;
speed = 0.025;
pursuerNum = 5;
preyOffset = 0;

figure(1);
clf(1);
axis off;
box off;
hold on;
speedList = speed.*ones(1, pursuerNum);
cmap = turbo(pursuerNum);
pursuerList = 1:pursuerNum;
preyList = pursuerList(mod(pursuerList + preyOffset, numel(pursuerList)) + 1);
x = cos(2*pi/pursuerNum*pursuerList);
y = sin(2*pi/pursuerNum*pursuerList);
for iTime = 1:timeFinal
    heading = [-x(pursuerList) + x(preyList); -y(pursuerList) + y(preyList)];
    xNew = x + speedList.*heading(1,:);
    yNew = y + speedList.*heading(2,:);
    for iPursuer = 1:pursuerNum
        if imageStyle == 1
            plot([x(iPursuer), xNew(iPursuer)], [y(iPursuer), yNew(iPursuer)], 'Color', cmap(iPursuer, :))
        else
            iPrey = preyList(iPursuer);
            plot(x([iPrey, iPursuer]), y([iPrey, iPursuer]), 'Color', cmap(iPursuer, :))
        end
    end
    x = xNew;
    y = yNew;
end
if saveImage
    print(gcf, [filename,'.png'], '-dpng', '-r150');
end