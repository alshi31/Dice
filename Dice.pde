Die bob = new Die(0, 0);
void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));//your code here
  bob.roll();
  bob.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, rolls, sum, total; //member variable declarations here
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    rolls = 0;//variable initializations here
    sum = 0;
    total = 0;
  }
  void roll()
  {
    rolls = (int)(Math.random()*6+1); //your code here
  }
  void show()
  {
    for (int i = 0; i <= 500; i += 75)
    {
      for (int j = 0; j <= 400; j += 75)
      {
        rolls = (int)(Math.random()*6+1);
        sum = rolls + sum;
        fill ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); //your code here
        rect(myX + i, myY + j, 50, 50);
        if (rolls == 1)
        {
          fill (0, 0, 0);
          ellipse(25 + i, 25 + j, 5, 5);
        }
        if (rolls == 2)
        {
          fill (0, 0, 0);
          ellipse(12.5 + i, 12.5 + j, 5, 5);
          ellipse(37.5 + i, 37.5 + j, 5, 5);
        }
        if (rolls == 3)
        {
          fill (0, 0, 0);
          ellipse(12.5 + i, 12.5 + j, 5, 5);
          ellipse(25 + i, 25 + j, 5, 5);
          ellipse(37.5 + i, 37.5 + j, 5, 5);
        }
        if (rolls == 4)
        {
          fill(0, 0, 0);
          ellipse(12.5 + i, 12.5 + j, 5, 5);
          ellipse(37.5 + i, 12.5 + j, 5, 5);
          ellipse(37.5 + i, 37.5 + j, 5, 5);
          ellipse(12.5 + i, 37.5 + j, 5, 5);
        }
        if (rolls == 5)
        {
          fill(0, 0, 0);
          ellipse(12.5 + i, 12.5 + j, 5, 5);
          ellipse(37.5 + i, 12.5 + j, 5, 5);
          ellipse(37.5 + i, 37.5 + j, 5, 5);
          ellipse(12.5 + i, 37.5 + j, 5, 5);
          ellipse(25 + i, 25 + j, 5, 5);
        }
        if (rolls == 6)
        {
          fill(0, 0, 0);
          ellipse(12.5 + i, 12.5 + j, 5, 5);
          ellipse(37.5 + i, 12.5 + j, 5, 5);
          ellipse(37.5 + i, 37.5 + j, 5, 5);
          ellipse(12.5 + i, 37.5 + j, 5, 5);
          ellipse(12.5 + i, 25 + j, 5, 5);
          ellipse(37.5 + i, 25 + j, 5, 5);
        }
      }
    }
    total = sum;
    fill ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    textSize(64);
    text("Total:" + " " + total, 100, 485);
    sum = 0;
  }
}
