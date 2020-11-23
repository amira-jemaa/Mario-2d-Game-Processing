class MoveGame {
  PImage mario;
  float PosX=0;
  float PosY=height-80;
  float  gravity=1;
  float lift=-10;
  float loaf=10;
  float fall=10;
  int velocity=0;
  float h=130;
  boolean constraint ;
  float PosVx, PosVy;
  float x,y;

  boolean falls=false;
 boolean newg;
  
     

  MoveGame() {
    mario=loadImage("mario0.png");
   
    PosX=0;
    PosY=height-80;}
  
  

  void update() {
     
    image(mario, PosX, PosY);  
    
     if (PosY>height) {
      PosY=height/2;
  velocity=0;
      println(PosY);
    }
  }
 void jump(){
   
   PosVy=-20;
         PosY+=PosY;
 
 
  }
  
  void Up() {
    
     PosVy+=gravity;
    PosY+=PosVy;
      if (keyPressed) {
      
      if (key == ' ') {
        
        
        
        PosVy=-20;
      PosY+=PosY;
          
         
     }
     
  }
  }
  
  void drawMario() {

  //  if (falls==false) {
      image(mario, PosX, PosY);
 //   }


    if  ( PosX== 430  )
    {
      falls=true;
      GameOver();
    }
  }



  void replace() {

    if ( falls==true) {
      //PosX+=445.0;
      PosY+=height-40;
      image(mario, 435.0, height-40);

      constraint =true;
    }
  }

  void control () {
      if (keyPressed){
  
      if (falls==false) {
        if ( key == 'd') {

          if (PosX< width-25) {
            PosX+=3;
          }
        }
        if ( key == 'q') {
          if (PosX>0) {
            PosX-=3;
          }
        }
      }
      }
  }  
  void GameOver() {


    textAlign(CENTER, CENTER);
    fill(255);
    text("GAME OVER!!!", 250, height/3);
    text("YOU LOST ", 250, height/2);
    tint(255, 0, 0);
  }
}
