import com.hamoid.*;

VideoExport videoExport;

PImage l;

void ic(PImage i, int x, int y, int w, int h) {
  image(i, x-w/2, y-h/2, w, h);
} 

void er(int x, int y, int r) {
  noFill();
  ellipse(x, y, r, r);
}

int si;
void setup() {
  si=min(width, height);
  //size(360, 360);
  fullScreen();
  l = loadImage("lr.png");
  //ic(loadImage("l.jpg"), width/2, height/2, width, height);
  videoExport = new VideoExport(this, "result.mp4");
  videoExport.startMovie();
  background(0);
  videoExport.saveFrame();
}

int i=0;
int a=0;
String s="CrazyMax Channel";
void draw() {
  if(i<si*0.5 && a==0) {
    i++;
    background(0);
    ic(l, width/2, height/2, int(si*0.5), int(si*0.5));
    strokeWeight(si*0.5-i+5);
    er(width/2, height/2, int(si*0.5));
  } else if(a==0) {
    a=1;
  }
  
  if(i>si*0.35 && a==1) {
    i--;
    background(0);
    ic(l, width/2, height/2, i, i);//int(i/2)
  } else if(a==1) {
    a=2;
    i=int(si*(0.35+0.1));
    textAlign(CENTER, TOP);
    textSize(si*0.5/s.length());
    fill(255);
    text(s, width/2, si*(0.5+0.35/2+0.05));//height*0.8
  }
  
  if(i<int(si*(0.35+0.175+0.1)) && a==2) {
    i++;
    background(0);
    ic(l, width/2, height/2, int(si*0.35), int(si*0.35));//int(i/2)
    fill(255);
    text(s, width/2, si*(0.5+0.35/2+0.05));//height*0.8
    fill(0);
    rect(0, (si+i)/2, width, si*0.1);
  } else if(a==2) {
    a=3;
    videoExport.endMovie();
    exit();
  }
  if(a!=3) videoExport.saveFrame();
}
