%% Take children to school
close(world);
clear all;
%open vrworld
world = vrworld('h2.wrl');
open(world);
fig = view(world, '-internal'); 
vrdrawnow;
 van=vrnode(world, 'Van');
 father=vrnode(world, 'man');
 boy=vrnode(world, 'boy');
 girl=vrnode(world,'girl');
  
 
   %% girl
   x_girl=0:5;
   y_girl=0.0 + zeros(size(x_girl));
   z_girl=1.0+zeros(size(x_girl));
   
   for i=1:length(x_girl)
       girl.translation =[ -x_girl(i) y_girl(i) z_girl(i)];
       vrdrawnow;
       pause(0.1);
   end
   %% boy
   x_boy = 4.4:9.2;
   y_boy=0.4+zeros(size(x_boy));
   z_boy=1.1+zeros(size(x_boy));
   
   for i=1:length(x_boy)
       boy.translation =[ -x_boy(i) y_boy(i) z_boy(i)];
       vrdrawnow;
       pause(0.1);
   end
    %% father
   x_father=4.4:9.2;
   y_father=0.4 + zeros(size(x_father));
   z_father= 0.9+ zeros(size(x_father));
   
   for i=1:length(x_father)
       father.translation =[-x_father(i) y_father(i) z_father(i)];
       vrdrawnow;
       pause(0.1);
   end
%% climb car
father.scale=[0 0 0];
boy.scale= [0  0 0];
girl.scale=[0 0 0];
 x1=10:13.5;
y1=0.5+zeros(size(x1));
z1=0.1+zeros(size(x1));
%% loops
for i=1:length(x1)
van.translation = [-x1(i) y1(i) z1(i)];
father.translation= [-x1(i) y1(i) z1(i)];
boy.translation= [-x1(i) y1(i) z1(i)];
vrdrawnow;
pause(0.3);
end
% right turn
van.rotation = [0, -1, 0, 160.2];
%% moving girl
x_girl2=5:11;
y_girl2=0+zeros(size(x_girl2));
z_girl2=1+zeros(size(x_girl2));

for i=1:length(x_girl2)
    girl.translation = [- x_girl2(i) y_girl2(i) z_girl2(i)];

end

%% moving girl to infront of school
z_girl3=1:13; 
y_girl3= 0+zeros(size(z_girl3));
x_girl3= -12+zeros(size(z_girl3));

for i= 1:length(z_girl3)
    girl.translation= [x_girl3(i) y_girl3(i) -z_girl3(i)];
end
%% to school
z2=2.5:13;
y2=0.5+zeros(size(z2));
x2=-15+zeros(size(z2));
for i=1:length(z2)
    van.translation = [x2(i)  y2(i)  -z2(i)];
    father.translation=[x2(i) y2(i) -z2(i)];
    boy.translation =[x2(i) y2(i) -z2(i)];
    vrdrawnow;
    pause(0.2);
end
%% drop chidlren
girl.scale=[1 1 1];
boy.scale= [0.2 0.2 0.2];
pause(0.3)
%% boy to school
x_boy2=15:22;
y_boy2=0.5+zeros(size(x_boy2));
z_boy2=-13+ zeros(size(x_boy2));

for i=1:length(x_boy2)
    boy.translation = [-x_boy2(i) y_boy2(i) z_boy2(i)];
    vrdrawnow;
    pause(0.2);
end
%% girl to school 
x_girl4=12:18;
y_girl4=0+zeros(size(x_girl4));
z_girl4=-13+zeros(size(x_girl4));
for i=1:length(x_girl4)
    girl.translation = [-x_girl4(i) y_girl(4) z_girl4(i) ];
    vrdrawnow;
    pause(0.2);
end
boy.scale=[0 0 0];
girl.scale= [0 0 0];
pause(0.3);
%% School to work
z3=13:22;
x3=-15+zeros(size(z3));
y3=0.5+zeros(size(z3));
for i=1:length(z3)
    van.translation = [x3(i)  y3(i)  -z3(i)];
    vrdrawnow;
    pause(0.2);
end
%%  right turn 2
van.rotation = [0, -1, 0, -89.5];
vrdrawnow;
%% main road to work
x4=-13:-7.8;
y4=0.5+zeros(size(x4));
z4=-20.9+zeros(size(x4));
for i=1:length(x4)
    van.translation = [x4(i)  y4(i)  z4(i)];
    vrdrawnow;
  pause(0.2);
end
van.scale= [0 0 0];

