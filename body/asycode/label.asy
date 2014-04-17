size(200);
draw((0,0)--(4cm,2cm),blue,Arrow);
label( "LeftSide",(0,0)--(4cm,2cm),align=LeftSide);
label( "RightSide",(0,0)--(4cm,2cm),align=RightSide);
label( "Center",(0,0)--(4cm,2cm),align=Center);
draw((6cm,0)--(8cm,2cm),blue,Arrow);
label( "E",(6cm,0)--(8cm,2cm),Relative(E));
label( "S",(6cm,0)--(8cm,2cm),Relative(S));
label( "W",(6cm,0)--(8cm,2cm),Relative(W));
label( "N",(6cm,0)--(8cm,2cm),Relative(N));
draw((10cm,0)--(12cm,2cm),blue,Arrow);
label(Label("E",Rotate((2,2))),(10cm,0)--(12cm,2cm),Relative(E));
label(Label("S",Rotate((S))),(10cm,0)--(12cm,2cm),Relative(S));
label(Label("W",Rotate((NW))),(10cm,0)--(12cm,2cm),Relative(W));
label(Label("N",Rotate((E))),(10cm,0)--(12cm,2cm),Relative(N));


