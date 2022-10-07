void setup()
{
  size (600, 600);
  textAlign(CENTER, CENTER);
  noLoop();
}
int counter;
Die bob;

void draw()
{
  background(0);
  for (int y = 60; y<500; y = y + 60) {
    for (int x = 60; x<500; x = x + 60) {
      bob = new Die(x, y);
      bob.show();
    }
  }
  fill(255);
  textSize (25);
  text("Total Number Of Dots: " + counter, 300, 550);
  counter = 0;
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int dots;
  int myX, myY;  

  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    dots = (int)(Math.random()*6)+1;
    roll();
  }
  void roll()
  {
    if (dots==1)
      counter+=1;
    if (dots==2)
      counter+=2;
    if (dots==3)
      counter+=3;
    if (dots==4)
      counter+=4;
    if (dots==5)
      counter+=5;
    if (dots==6)
      counter+=6;
  }
  void show()
  {
    fill(255);
    rect (myX, myY, 50, 50, 15, 15, 15, 15);
    int diam = 0;
    float r = 255;
    noFill();
    while (diam < 10) {
      strokeWeight (2);
      stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      if (dots==1) {
        ellipse(myX+25, myY+25, diam, diam);
      } else if (dots==2) {
        ellipse (myX+10, myY+10, diam, diam);
        ellipse (myX+40, myY+40, diam, diam);
      } else if (dots==3) {
        ellipse(myX+25, myY+25, diam, diam);
        ellipse (myX+10, myY+10, diam, diam);
        ellipse (myX+40, myY+40, diam, diam);
      } else if (dots==4) {
        ellipse (myX+10, myY+10, diam, diam);
        ellipse (myX+10, myY+40, diam, diam);
        ellipse (myX+40, myY+40, diam, diam);
        ellipse (myX+40, myY+10, diam, diam);
      } else if (dots==5) {
        ellipse (myX+10, myY+10, diam, diam);
        ellipse (myX+10, myY+40, diam, diam);
        ellipse (myX+40, myY+40, diam, diam);
        ellipse (myX+40, myY+10, diam, diam);
        ellipse (myX+25, myY+25, diam, diam);
      } else if (dots==6) {
        ellipse (myX+10, myY+10, diam, diam);
        ellipse (myX+10, myY+40, diam, diam);
        ellipse (myX+40, myY+40, diam, diam);
        ellipse (myX+40, myY+10, diam, diam);
        ellipse (myX+10, myY+25, diam, diam);
        ellipse (myX+40, myY+25, diam, diam);
      }
      diam++;
      r-=255/10.0;
    }
  }
}
