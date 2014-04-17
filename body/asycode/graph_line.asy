import graph;
size(200,0);
real f2(real x){return x^2;}
guide f2=graph(f2,0,1.5,operator..);
draw(f2,red);
label(Label("$y=x^2$",EndPoint,E),f2);
xaxis("$x$",Arrow);
yaxis("$y$",Arrow);
