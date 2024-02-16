public void setup(){
  size(800,800);
  background(255);
}
public void draw(){
  myFractal(400,400,600);
}
public void myFractal(int x, int y, int siz){
    fill(0);
    ellipse(x - siz/2, y - siz/2, siz/2, siz/2);
    ellipse(x + siz/2, y - siz/2, siz/2, siz/2);
    ellipse(x, y, siz, siz);
    fill(255,0,0);
    arc(x, y, siz, siz, 0, PI);
    fill(255, 255, 0);
    ellipse(x - siz/6, y + siz/4, siz/10, siz/5);
    ellipse(x + siz/6, y + siz/4, siz/10, siz/5);
  if(siz > 10){
    myFractal(x, y - siz/2, siz/2);
    myFractal(x, y + siz/2, siz/2);
    myFractal(x + siz/2, y, siz/2);
    myFractal(x - siz/2, y, siz/2);
  }
}
