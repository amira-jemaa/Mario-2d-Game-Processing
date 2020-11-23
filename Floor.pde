class Floor {
int i,j;
PImage floor [][]; 
PImage tile0,tile1,tile2,tile3,tile4,tile5,tile6;
void display() {
  floor= loadImages("tile", 6);
  
}


PImage [][] loadImages ( String name, int nbImages) 
{
  PImage [][] tab0 = new PImage [2][nbImages];
  for ( int i=0; i<6; i++) {
    tab0 [0][i] = loadImage ( name + i + ".png");
  }
  return tab0;
}


}
