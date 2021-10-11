void setup()
{
  size(1300, 1400);
  noLoop();
}
void draw()
{
  background(25, 194, 19);
  Die one = new Die(100, 100);
  one.roll();
  one.show();
  Die two = new Die(500, 100);
  two.roll();
  two.show();
  Die three = new Die(900, 100);
  three.roll();
  three.show();
  Die four = new Die(100, 500);
  four.roll();
  four.show();
  Die five = new Die(500, 500);
  five.roll();
  five.show();
  Die six = new Die(900, 500);
  six.roll();
  six.show();
  Die seven = new Die(100, 900);
  seven.roll();
  seven.show();
  Die eight = new Die(500, 900);
  eight.roll();
  eight.show();
  Die nine = new Die(900, 900);
  nine.roll();
  nine.show();
  int sum = one.numDots+two.numDots+three.numDots+four.numDots+five.numDots+six.numDots+seven.numDots+eight.numDots+nine.numDots;
  fill(0);
  textSize(50);
  text("Total: " +(sum),550,1300);
/*  int sum;
  for(int y = 100; y <= 900; y = y+400) {
  for(int x = 100; x <= 900; x = x+400) {
  Die one = new Die(x, y);
  one.roll();
  one.show();
  sum =+ one.numDots;
  fill(0);
  textSize(50);
  text("Total: " +(sum),600,1300);
  }
  } */
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numDots, myX, myY;

  Die(int x, int y) //constructor
  {
    numDots = 0;
    myX = x;
    myY = y;
  }
  void roll()
  {
    numDots = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    fill(255,255,255);
    rect(myX,myY,300,300);
    if (numDots == 1) {
      fill(0);
      text ("1", myX, myY);
      int a = 1;
      fill(0);
      ellipse (myX+150,myY+150,10,10);
    } if (numDots == 2) {
      fill(0);
      text ("2", myX, myY);
      int b = 2;
      fill(0);
      ellipse (myX+25,myY+25,10,10);
      ellipse (myX+275,myY+275,10,10);
    } if (numDots == 3) {
      fill(0);
      text ("3", myX, myY);
      int c = 3;
      fill(0);
      ellipse (myX+25,myY+25,10,10);
      ellipse (myX+275,myY+275,10,10);
      ellipse (myX+150,myY+150,10,10);
    } if (numDots == 4) {
      fill(0);
      text ("4", myX, myY);
      int d = 4;
      fill(0);
      ellipse (myX+25,myY+25,10,10);
      ellipse (myX+275,myY+275,10,10);
      ellipse (myX+25,myY+275,10,10);
      ellipse (myX+275,myY+25,10,10);
    } if (numDots == 5) {
      fill(0);
      text ("5", myX, myY);
      int e = 5;
      fill(0);
      ellipse (myX+25,myY+25,10,10);
      ellipse (myX+275,myY+275,10,10);
      ellipse (myX+150,myY+150,10,10);
      ellipse (myX+25,myY+275,10,10);
      ellipse (myX+275,myY+25,10,10);
    } if (numDots == 6) {
      fill(0);
      text ("6", myX, myY);
      int f = 6;
      fill(0);
      ellipse (myX+25,myY+25,10,10);
      ellipse (myX+275,myY+275,10,10);
      ellipse (myX+25,myY+275,10,10);
      ellipse (myX+275,myY+25,10,10);
      ellipse (myX+150,myY+25,10,10);
      ellipse (myX+150,myY+275,10,10);
    }
  }
}
