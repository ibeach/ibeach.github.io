clear all;

chosenColors = gray(256);
filename = 'grayscott';
xSize = 300;
ySize = 300;
stepNum = 5000;
diffusionRateA = 0.16;
diffusionRateB = 0.08;
constantA = 0.06;
constantB = 0.062;
xRan = (1:xSize)/xSize - 1/2;
yRan = (1:ySize)/ySize - 1/2;
[x,y] = meshgrid(xRan, yRan);
concA = 1-exp(-80*(x.^2 + y.^2));
concB = exp(-80*(x.^2 + y.^2));
% % concA(50:275,50:275) = 0.5;
% concB(50:275,50:275) = 0.25;

for iStep = 1:stepNum
    [concA, concB] = updateGrayScott(concA, concB, constantA, constantB, ...
                                     diffusionRateA, diffusionRateB);
end

colormap(chosenColors);
imagesc(concA)

function [concANew, concBNew] = updateGrayScott(concA, concB, kA, kB, dA, dB)

    diffusionA = diffusionFast(concA);
    diffusionB = diffusionFast(concB);
    diffA = dA*diffusionA - concA.*concB.^2 + kA*(1 - concA);
    diffB = dB*diffusionB + concA.*concB.^2 - (kA + kB)*concB;
    concANew = concA + diffA;
    concBNew = concB + diffB;
end

function output = diffusionFast(input)
    convMatrix = [0, 1, 0;
                  1, -4, 1;
                  0, 1, 0];
    output = conv2(input, convMatrix, 'same');    
end