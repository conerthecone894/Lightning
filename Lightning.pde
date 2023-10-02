int x1 = 160;
int y1 = 400;
int x2 = 160;
int y2 = 400;
//start and end coordinates for lightning

int countdown = 0;

int o = 0;
int o2 = 0;
//opacity values for flash and chan

PImage[] frame = new PImage[5];
PImage chan;
//frames and mr.chan

int order = 0;
int[] location = {0, 888};
//more variables relating to frames

void setup(){
  size(512, 512);
  background(#16161d);
  frame[0] = loadImage("1.png");
  frame[1] = loadImage("2.png");
  frame[2] = loadImage("3.png");
  frame[3] = loadImage("4.png");
  frame[4] = loadImage("5.png");
  chan = loadImage("chanfound.png");
  //loads frames to be used later
}

void draw() {  
  noStroke();
  fill(47, 47, 54, 75);
  rect(0, 0, 512, 512);
  //background
  
  if (keyPressed == true && order == 4 && countdown < 200){
    zeus();
    flash();
  }
   
  bend();
  
  if(countdown >= 200){
    fill(46, 67, 129);
    rect(0, 0, 512, 512);
    tint(255, o2);
    image(chan, 0, 0);
    delay(50);
    o2++;
  }
    
}

void bend(){
  image(frame[order], location[0], location[0]);
   if (keyPressed == true && order !=4){
      order++;
      delay(500);
    }
}

void flash(){
  noStroke();
  fill(255, 255, 255, o);
  rect(0, 0, 512, 512);
  
  if(o == 25){
    o = 3;
    delay(10);
  } else {
    o = 25;
    delay(10);
  }
  
}

void zeus() {
  countdown++;
  
  strokeWeight(5);
  stroke(255);
  
  
  if (countdown < 125){
    for (int i = 160; i < 375; i += int(random(30, 50))){
      y1 = y2;
      x1 = x2;
      x2 = i;
      y2 = int(random(330, 451)) + int(random(-i, i))/4;
    
      line(x1, y1, x2, y2);
    } 
    //draws lightning
     x2 = 160;
     y2 = int(random(350, 426));
     x1 = 150;
     y1 = y2;
     //returns lightning to top
  } else if (countdown < 200) {
    for (int i = -10; i < 522; i += int(random(15, 75))){
        y1 = y2;
        x1 = x2;
        x2 = i;
        y2 = int(random(-10, 522));
    
        line(x1, y1, x2, y2);
      } 
      //draws lightning
       x2 = -10;
       y2 = int(random(-10, 522));
       x1 = -10;
       y1 = y2;
       //returns lightning to top
  
  } else {
      
    }
}
