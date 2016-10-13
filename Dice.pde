Die one;
int total;
  int rollScore;
void setup()
{
  size(500,500);
  background(0);
  noLoop();
}
void draw()

{
  for (int y = 90; y <= 450; y+=50)
  {
    for (int x = 90; x <= 450; x+=50) 
    {
      System.out.println();   
      one = new Die(x,y);
      one.roll();
      total = rollScore + total; 
      one.show(); 
   
      }
   
   }
    textSize(30); 
       
    text("total=" + total,200,50);
}
void mousePressed()
{
    redraw();
    background(0);
    total = 0;
    
}
class Die 
{
  int myX , myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    
  }
  void roll()
  {
    rollScore = (int)((Math.random()*6) + 1);
       
  }
  void show()
  {
    fill(12,6,211);
    rect(myX,myY,40,40);
    fill(255,255,255);
    
    if(rollScore== 1){
      ellipse(myX+20,myY+20,7,7);
    } 
    if(rollScore== 2){
      ellipse(myX+30,myY+30,7,7);
      ellipse(myX+10,myY+10,7,7);
    }
    if(rollScore== 3){
      ellipse(myX+20,myY+20,7,7);
      ellipse(myX+20/2,myY+20/2,7,7);
      ellipse(myX+3*20/2,myY+3*20/2,7,7);
   }
    if(rollScore== 4){
      ellipse(myX+30,myY+30,7,7);
      ellipse(myX+10,myY+10,7,7);
      ellipse(myX+10,myY+30,7,7);
      ellipse(myX+30,myY+10,7,7);
   }
   if(rollScore== 5){
      ellipse(myX+30,myY+30,7,7);
      ellipse(myX+10,myY+10,7,7);
      ellipse(myX+10,myY+30,7,7);
      ellipse(myX+30,myY+10,7,7);
      ellipse(myX+20,myY+20,7,7);
   }
   if(rollScore== 6){
      ellipse(myX+30,myY+30,7,7);
      ellipse(myX+10,myY+10,7,7);
      ellipse(myX+10,myY+30,7,7);
      ellipse(myX+30,myY+10,7,7);
      ellipse(myX+20,myY+10,7,7);
      ellipse(myX+20,myY+30,7,7);
   }
 }
}
