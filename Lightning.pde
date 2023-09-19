int x1;
int y1;
int x2 = 0;
int y2 = 150;

int o = 0;


void setup(){
  size(512, 512);
  background(#16161d);
}

void draw() {  
  noStroke();
  fill(22, 22, 29, 75);
  rect(0, 0, 512, 512);
  //background
  
  fill(225, 225, 225, o);
  rect(0, 0, 512, 512);
  //flash
  
  if (keyPressed == true)
    zeus();
}

void zeus() {
  strokeWeight(5);
  stroke(255);
  
  for (int i = 0; i < 525; i += random(0, 100)){
    y1 = y2;
    x1 = x2;
    x2 += random(-35, 36);
    y2 = i;
    
    line(x1, y1, x2, y2);
  }
   x2 = 256;
   y2 = -25;
   x1 = 0;
   y1 = -25;
}
