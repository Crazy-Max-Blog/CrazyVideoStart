/*---------------------Settings---------------------*/
String s="CrazyMax Channel";  // Строка снизу
float k1 = 0.5;               // Размеры изображения в начале
float k2 = 0.35;              // Размеры изображения в конце
String p="result.mp4";        // Название файла результата
String imp="lr.png";          // Название файла картинки (нужна скруглённая картинка (я делал здесь: https://web-tool.org/create-round-image/))
/*-------------------End Settings-------------------*/

import com.hamoid.*;

VideoExport videoExport;

PImage l;

void ic(PImage i, int x, int y, int w, int h) {
  image(i, x-w/2, y-h/2, w, h);
  //strokeWeight(max(w, h)/2); // костыльчик для скругления картинок
  //er(x, y, w, h);
} 

void er(int x, int y, int r) {
  noFill();
  ellipse(x, y, r, r);
}

void er(int x, int y, int w, int h) {
  noFill();
  ellipse(x, y, w, h);
}

int si;
void setup() {
  si=min(width, height);
  //size(360, 360);
  fullScreen();
  l = loadImage(imp);
  //ic(loadImage("l.jpg"), width/2, height/2, width, height);
  videoExport = new VideoExport(this, p);
  videoExport.startMovie();
  background(0);
  videoExport.saveFrame();
}

int i=0;
int a=0;
void draw() {
  if(i<si*k1 && a==0) {
    i++;
    background(0);
    ic(l, width/2, height/2, int(si*k1), int(si*k1));
    strokeWeight(si*k1-i+5);
    er(width/2, height/2, int(si*k1));
  } else if(a==0) {
    a=1;
  }
  
  if(i>si*k2 && a==1) {
    i--;
    background(0);
    ic(l, width/2, height/2, i, i);//int(i/2)
  } else if(a==1) {
    a=2;
    i=int(si*(k2+0.1));
    textAlign(CENTER, TOP);
    textSize(si*k1/s.length());
    fill(255);
    text(s, width/2, si*(0.5+k2/2+0.05));//height*0.8
  }
  
  if(i<int(si*(k2+0.175+0.1)) && a==2) {
    i++;
    background(0);
    ic(l, width/2, height/2, int(si*k2), int(si*k2));//int(i/2)
    fill(255);
    text(s, width/2, si*(0.5+k2/2+0.05));//height*0.8
    fill(0);
    rect(0, (si+i)/2, width, si*0.1);
  } else if(a==2) {
    a=3;
    videoExport.endMovie();
    exit();
  }
  if(a!=3) videoExport.saveFrame();
}
