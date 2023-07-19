clc
clear all
close all

% Create a figure window
figure('Name','Artisan Avenue','NumberTitle','off')

% Create a 2D plot
x = -2:0.1:2;
y = -2:0.1:2;
[X,Y] = meshgrid(x,y);
Z = (X.^2 + Y.^2).^0.5;
surf(X,Y,Z,'FaceColor','interp')
colormap(jet)
colorbar

% Set the size, color, and style of the figure
% axes
ax = gca;
ax.XLim = [-2 2];
ax.YLim = [-2 2];
ax.ZLim = [0 2];
ax.GridColor = [1 0 0];
ax.GridLineStyle = '--';
ax.XLabel.String = 'X (m)';
ax.YLabel.String = 'Y (m)';
ax.ZLabel.String = 'Z (m)';
ax.Title.String = 'Artisan Avenue';

% Add a light
light('Position',[5 5 5],'Style','local')

% Add text
text(-1.5,-1.7,1.8,'Avenue','FontWeight','bold','FontSize',14)

% Add some trees
T = cylindertree(-1,-1,1,1,1.5);
T(1,:,:) = T(1,:,:) - 1;
T(3,:,:) = T(3,:,:) - 0.5;
surf(T(1,:,:),T(2,:,:),T(3,:,:),'FaceColor',[0.2 0.8 0.2]);

T = cylindertree(0.5,-1.5,1,1,1.7);
T(1,:,:) = T(1,:,:) - 0.5;
T(3,:,:) = T(3,:,:) - 0.6;
surf(T(1,:,:),T(2,:,:),T(3,:,:),'FaceColor',[0.2 0.8 0.2]);

T = cylindertree(1.5,1.5,1,1,2);
T(1,:,:) = T(1,:,:) + 0.5;
T(3,:,:) = T(3,:,:) - 0.8;
surf(T(1,:,:),T(2,:,:),T(3,:,:),'FaceColor',[0.2 0.8 0.2]);

% Add a bench
L = 1;
B = 0.3;
H = 0.4;
[x,y,z] = cuboid(-1,0.5,0,L,B,H);
surf(x,y,z,'FaceColor',[0.2 0.2 0.2])

% Add a street lamp
[x,y,z] = cylinder(-1,-1,1,1,1);
surf(x,y,z,'FaceColor',[0.9 0.9 0.9],'EdgeColor','none');
[x,y,z] = cuboid(-1,1,2,0.2,0.2,0.5);
surf(x,y,z,'FaceColor',[0.9 0.9 0.9],'EdgeColor','none');
[x,y,z] = cuboid(-1,1,2.5,0.1,0.1,0.2);
surf(x,y,z,'FaceColor','y','EdgeColor','none');

% Add some birds
[x,y,z] = sphere(50,-1.5,1.5,2.5,0.1);
surf(x,y,z,'FaceColor',[0 0.8 0.8],'EdgeColor','none');
[x,y,z] = sphere(50,-1,1.2,2.5,0.1);
surf(x,y,z,'FaceColor',[0 0.8 0.8],'EdgeColor','none');
[x,y,z] = sphere(50,0.5,-1,2.5,0.1);
surf(x,y,z,'FaceColor',[0 0.8 0.8],'EdgeColor','none');

% Set the view
view(-45,45)

% Set the figure to maximized
set(gcf,'Units','normalized','OuterPosition',[0 0 1 1])