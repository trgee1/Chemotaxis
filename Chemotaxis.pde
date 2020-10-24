Oofers[] bob;
Oofers[] sue;
Heart you;
void setup()   
 {
   background(0, 0, 0);
   size(400, 400);
   bob = new Oofers[25];
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Oofers();
   }
   sue = new Oofers[15];
    for(int i = 0; i < sue.length; i++){
      sue[i] = new Oofers();
    }
 }   
 void draw()   
 {
   background(0,0,0);
   strokeWeight(5);
   stroke(300, 300, 300);
   fill(0, 0, 0);
    rect(5, 5, 390, 390);
   you = new Heart();
   you.create();
   
   for(int i = 0; i < bob.length; i++){
      bob[i].show();
      bob[i].chase();
    }
    for(int i = 0; i < sue.length; i++){
      sue[i].show();
      sue[i].zoom();

      if(dist(mouseX+5, mouseY+5, bob[i].myX, bob[i].myY) < bob[i].mySiz || dist(mouseX+5, mouseY+5, sue[i].myX, sue[i].myY) < sue[i].mySiz
      || dist(mouseX-5, mouseY-5, bob[i].myX, bob[i].myY) < bob[i].mySiz || dist(mouseX-5, mouseY-5, sue[i].myX, sue[i].myY) < sue[i].mySiz){
        textSize(30);
        fill(250, 250, 0);
        text("oof", mouseX, mouseY);
      }
    }
    }
 class Oofers   
 {
   int myX, myY, mySiz, myColour;
   float speed;
   Oofers(){
     
     myX = (int)(Math.random()*401);
     myY = (int)(Math.random()*401);
     mySiz = 5;
     myColour = 300;
     speed = (float)(Math.random()*5);
   }
     void show(){
       noStroke();
       fill(myColour, myColour, myColour);
       ellipse(myX, myY, mySiz, mySiz);
   }
     void chase(){
       if(myX >= mouseX)
         myX += (int)(Math.random()*-5)+1;
         else if(myX < mouseX)
         myX += (int)(Math.random()*5)-1;
       if(myY >= mouseY)
         myY += (int)(Math.random()*-5)+1;
         else if(myY < mouseY)
         myY += (int)(Math.random()*5)-1;
     }
     void zoom(){
       myX += (int)(Math.random()*11)-5;
       myY += (int)(Math.random()*11)-5;
     }
 }
 class Heart
 {
   int tri1, tri2, tri3, el1, el2, tri1Y, tri2Y, tri3Y, el1Y, el2Y, heartColour;
   float elSiz;
   boolean visible;
   int die1, die2, die3, die4, die5, die6, die7, die8, dieSize;

   Heart(){ 
     tri1 = mouseX - 15;
     tri2 = mouseX + 15;
     tri3 = mouseX;
     tri1Y = mouseY;
     tri2Y = mouseY;
     tri3Y = mouseY + 18;
     el1 = mouseX - 5;
     el2 = mouseX + 5;
     el1Y = mouseY;
     el2Y = mouseY;
     elSiz = 17.85;

   }
   void create(){
     visible = true;
     noStroke();
     heartColour = 250;
     fill(heartColour, 0 ,0);
     triangle(tri1, tri1Y, tri2, tri2Y, tri3, tri3Y);
     ellipse(el1, el1Y, elSiz, elSiz);
     ellipse(el2, el2Y, elSiz, elSiz);
   }
 }
