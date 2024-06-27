PImage l;

void ic(PImage i, int x, int y, int w, int h) {
  image(i, x-w/2, y-h/2, w, h);
} 
int si;
void setup() {
  si=min(width, height);
  //size(360, 360);
  fullScreen();
  l = loadImage("lr.png");
  //ic(loadImage("l.jpg"), width/2, height/2, width, height);
}

int i=0;
int a=0;
void draw() {
  if(i<si*0.75 && a==0) {
    i++;
    background(0);
    ic(l, width/2, height/2, i, i);
  } else if(a==0) {
    a=1;
  }
  
  if(i>si*0.5 && a==1) {
    i--;
    background(0);
    ic(l, width/2, height/2, i, i);//int(i/2)
  } else if(a==1) {
    a=2;
    textAlign(CENTER, TOP);
    String s="CrazyMax Channel";
    textSize(si*0.5/s.length());
    text(s, width/2, height*0.8);
  }
}
