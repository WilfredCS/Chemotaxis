  int i;
  Bacteria [] bobs = new Bacteria[7];//declare bacteria variables here 
 
 void setup()   
 { 
   size(300,300);//initialize bacteria variables here
   bobs[0] = new Bacteria();
   bobs[1] = new Bacteria();
   bobs[2] = new Bacteria();
   bobs[3] = new Bacteria();
   bobs[4] = new Bacteria();
   bobs[5] = new Bacteria();
   bobs[6] = new Bacteria();
   /*bobs = new Bacteria[10];
   
   for (int i = 0; i < bobs.length ;i++);
   {
     bobs[i] = new Bacteria();
   }*/
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   //for (int i = 0; i < bobs.length; i++);
   {
   bobs[0].move();
   bobs[0].show();
   
   bobs[1].move();
   bobs[1].show();
   
   bobs[2].move();
   bobs[2].show();
   
   bobs[3].move();
   bobs[3].show();
   
   bobs[4].move();
   bobs[4].show();
   
   bobs[5].move();
   bobs[5].show();
   
   bobs[6].move();
   bobs[6].show();
   }
   }
   void mousePressed()
  {
  redraw();
  }
 
 class Bacteria    
 {     
   int myX, myY, myColor; //lots of java!
   
   Bacteria()
   {
     myX = myX + (int)(Math.random()*280);
     myY = 0;
     myColor = color(255,0,0);
   }
   void move()
   {
     myY++;
     myX = myX + (int)((Math.random()*4)-2);
   }
   void show() {
     noStroke();
     fill(myColor);
     ellipse(myX,myY,20,20);
     stroke(4);
 }
 }
