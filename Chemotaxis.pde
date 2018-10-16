Walker[] bob;
void setup()
{
  size(500,500);
  background(0);
  frameRate(10);
  bob = new Walker[1000];
  for(int i=0; i <bob.length; i++)
    bob[i]=new Walker();
}
void draw()
{
  background(0);
  for(int i=0;i<bob.length;i++)
  {
    bob[i].show();
    bob[i].walk();
  }
}
class Walker
{
  int myX,myY;
  int myColor;
   Walker()
   {
     myX = myY = 250;
   }
   void walk()
   {
     myX = myX + (int)(Math.random()*5-2.5);
     myY = myY + (int)(Math.random()*5-2.5);

   }
   
   void show ()
   {
   	 fill(0,255,0);
     ellipse(300,100, 90,50);
     ellipse(280,100, 50,30);
     
     stroke(5);
     fill(39,26,12);
     rect(200,100, 80, 20);
     rect(250,100, 15, 150,7);
     fill(144,0,211);
     ellipse(myX, myY, 20, 20);
   }
}
