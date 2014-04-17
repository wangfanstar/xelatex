/*` 时钟波形，20，字号为 5， PS2设备到主机的通讯过程`*/

settings.tex="pdflatex";
texpreamble("\usepackage{CJK}
 \AtBeginDocument{\begin{CJK*}{GBK}{kai}}
   \AtEndDocument{\clearpage\end{CJK*}}");

defaultpen(linewidth(0.3mm)+fontsize(3mm));
pen redpen=red+(linewidth(0.1mm)+fontsize(2mm));
pen greenpen=blue+(linewidth(0.1mm)+fontsize(2mm));
pen bluepen=blue+(linewidth(0.1mm)+fontsize(2mm));


/*
wave_A1---A2	-wave_A5
	  |	|
	  |	|
   wave_A3 ----- wave_A4

*/
pair wave_A1=(0,0);
pair wave_A2=(10mm,0);
pair wave_A3=(10mm,-10mm);
pair wave_A4=(20mm,-10mm);
pair wave_A5=(20mm,0);




for(int i=0 ; i<=10 ; ++i )
{		
	
	draw(wave_A1+(20mm*i,0)--wave_A2+(20mm*i,0)--wave_A3+(20mm*i,0)--wave_A4+(20mm*i,0)--wave_A5+(20mm*i,0),green);
	draw(wave_A1+(20mm*i,-25mm)--wave_A2+(20mm*i,-25mm)--wave_A3+(20mm*i,-25mm)--wave_A4+(20mm*i,-25mm)--wave_A5+(20mm*i,-25mm),blue);
	
	
}
pair A11=(-25,20), A22=(-25,-10);


label("`时钟`",wave_A1,SW,black);
label("`数据`",wave_A1+(20mm*0,-25mm),SW,black);

//
draw(wave_A5+(20mm*1,10mm)--wave_A5+(20mm*1,-40mm),dashed);
draw(wave_A5+(20mm*2,10mm)--wave_A5+(20mm*2,-40mm),dashed);
draw(wave_A5+(20mm*1,5mm)--wave_A5+(20mm*2,5mm),redpen,Arrows);


label("`周期高40us低40us`",wave_A5+(20mm*1,5mm)--wave_A5+(20mm*2,5mm),LeftSide,redpen);



//draw((0,0)--(20,0),white);




