void setup()
{
  noLoop();
  size(500, 500);
}

float diceSum = 0;

void draw()
{

  background(#186324);
  for (int j = 50; j <= 425; j += 50) {
    for (int i = 10; i <= 450; i += 50) {
      Die mais = new Die(15 + i, j);
      mais.show();
    }
  }

  textSize(20);
  text("Total: " + (int)diceSum, 380, 480);
}

void mousePressed()
{
  redraw();
  diceSum = 0;
}

class Die //models one single dice cube
{
  int myX, myY, numValue, cubeRadius, dotXCenter, dotYCenter;

  Die(int x, int y) //constructor
  {
    cubeRadius = 50;
    myX = x;
    myY = y;
    dotXCenter = myX + (int)(cubeRadius/2);
    dotYCenter = myY + (int)(cubeRadius/2);
    roll();
  }
  void roll()
  {
    numValue = (int)(Math.random()*6 + 1);
    diceSum += numValue;
  }

  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 10);
    fill(0);
    if (numValue == 1) {
      ellipse(dotXCenter, dotYCenter, 10, 10);
    } 
    if (numValue == 2) {
      ellipse(dotXCenter-10, dotYCenter, 10, 10);
      ellipse(dotXCenter+10, dotYCenter, 10, 10);
    } 
    if (numValue == 3) {
      ellipse(dotXCenter-10, dotYCenter-10, 10, 10);
      ellipse(dotXCenter, dotYCenter, 10, 10);
      ellipse(dotXCenter+10, dotYCenter+10, 10, 10);
    } 
    if (numValue == 4) {
      ellipse(dotXCenter-10, dotYCenter-10, 10, 10);
      ellipse(dotXCenter-10, dotYCenter+10, 10, 10);
      ellipse(dotXCenter+10, dotYCenter-10, 10, 10);
      ellipse(dotXCenter+10, dotYCenter+10, 10, 10);
    } 
    if (numValue == 5) {
      ellipse(dotXCenter-10, dotYCenter-10, 10, 10);
      ellipse(dotXCenter-10, dotYCenter+10, 10, 10);
      ellipse(dotXCenter+10, dotYCenter-10, 10, 10);
      ellipse(dotXCenter+10, dotYCenter+10, 10, 10);
      ellipse(dotXCenter, dotYCenter, 10, 10);
    } 
    if (numValue == 6) {
      ellipse(dotXCenter-10, dotYCenter, 10, 10);
      ellipse(dotXCenter+10, dotYCenter, 10, 10);
    }
  }
}
