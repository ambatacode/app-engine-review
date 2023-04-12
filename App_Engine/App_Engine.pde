import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
void setup() {
  //
  setupMusic();
  //
  size(1000,700);
  // //Change the index manually
}//End setup
//
void draw() {
  drawMusic();
  drawMusicButtons();
  setup2();
  
  
}//End draw
//
void keyPressed() {
  keyPressedMusic();
  mousePressedMusic();
}
  //
  //proto
  //End keyPressed

void mousePressed() {
  mousePressedMusic();
}//End mousePressed
//
//End MAIN Program (Driver)
