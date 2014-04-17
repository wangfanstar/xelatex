texpreamble("\usepackage{CJK}
\AtBeginDocument{\begin{CJK*}{GBK}{kai}}
\AtEndDocument{\clearpage\end{CJK*}}");

defaultpen(fontsize(10pt));

struct bb {
    public pair min,max;
    public pair bot, top, left, right;
    static bb bb(pair min, pair max) {
        bb b=new bb;
        b.min=min;
        b.max=max;
        real mx=0.5(min.x+max.x), my=0.5(min.y+max.y);
        b.bot=(mx,min.y);
        b.top=(mx,max.y);
        b.left=(min.x,my);
        b.right=(max.x,my);
        return b;
    }
};

real x=1.5cm, y=0.5cm, z=3cm;

bb box(picture pic=currentpicture, Label L="", pair position=0) {
    label(pic, L, position);
    guide g=(-x, -y)--(x,-y)--(x,y)--(-x,y)--cycle;
    transform t=shift(position);
    draw(pic, t*g);
    return bb.bb(t*(-x,-y), t*(x,y));
}

bb diamond(picture pic=currentpicture, Label L="", pair position=0) {
    label(pic, L, position);
    guide g=(-x,0)--(0,-y)--(x,0)--(0,y)--cycle;
    transform t=shift(position);
    draw(pic, t*g);
    return bb.bb(t*(-x,-y), t*(x,y));
}

bb circle(picture pic=currentpicture, Label L="", pair position=0) {
    label(pic, L, position);
    real m=min(x,y);
    guide g=(-m,0)..(0,-m)..(m,0)..(0,m)..cycle;
    transform t=shift(position);
    draw(pic, t*g);
    return bb.bb(t*(-m,-m), t*(m,m));
}

bb begin=circle("", (4cm,5cm)), end=circle("", (4cm,-1cm));
bb body=box("`循环体`", (4cm,3cm));
bb condition=diamond("\tt bool `表达式`", (4cm,1cm));

pair way(pair a, pair b, real frac) {
    return frac*(b-a)+a;
}

draw(begin.bot--body.top, MidArrow);
draw(body.bot--condition.top, MidArrow);
draw("\tt true", condition.right--condition.right+z-x, N);
pair begin_body=way(begin.bot, body.top,0.5);
draw(condition.right+z-x--begin_body+z--begin_body, Arrow(position=0.5));

draw("\tt false", condition.bot--end.top, W, MidArrow);
