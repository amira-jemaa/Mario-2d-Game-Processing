MoveGame MoveGame;

PImage sunset, tree, stone, leaf, sign,plat1,mario;
float x, j;
PImage floor [][]; 
int index=0;


void setup() {
  size(500, 600);
 MoveGame= new MoveGame();
 sunset= loadImage("tint000.jpg");
  stone=loadImage("4.png");
  leaf=loadImage("2.png");
  sign=loadImage("1.png");
  plat1=loadImage("19.png");
 // mario=loadImage("mario0.png");
  floor = loadImages("tile", 7);
  tree= loadImage("tree.png");

  j=height-100;
  x=240;
}
void draw () {

  background(55);
 image (sunset, 0, 0);
  drawObjects();
  drawFloor();
  MoveGame.drawMario();
  MoveGame.control();
  MoveGame.update();
    MoveGame.Up();
  
 MoveGame.replace();
 
 // MoveGame.GameOver();
 
 // MoveGame.NewGame();
}
void drawFloor() { image (tree,240,height-100);
  image (floor[0][0], -10, height-56);
  image (floor[0][1], 40, height-56);
  image (floor[0][2], 90, height-56);
//  image (floor[0][6], 440, height-56);
  image (floor[0][5], 390, height-56);
  image (floor[0][5], 340, height-56);
  image (floor[0][5], 290, height-56);
  image (floor[0][5], 240, height-56);
  image (floor[0][4], 190, height-56);
}
PImage [][] loadImages ( String name, int nbImages) 
{
  PImage [][] tab0 = new PImage [2][nbImages];
  for ( int i=0; i<7; i++) {
    tab0 [0][i] = loadImage ( name + i + ".png");
  }
  return tab0;
}
void drawObjects() {

 // image (tree, x, j);
  //image (tree, x+225, j);
  image (tree, -10, j);
  image(stone, x+50, j);
  image(stone, x+150, j);
  image(leaf, 400, j);
  image(sign, 90, j);
  image( plat1,360, height-270);
  image( plat1,270, height-200);
  image( plat1,270, height/2-50);
  image(plat1,90,height-155);


} 
 
