import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
color night = #FF9F00;

void setup() {
  //
  setupMusic();
  textsetup();
  //
  size(1000,700);
  background(night);
  songs[currentSong].loop(0);
  // //Change the index manually
}//End setup
//
void draw() {
  drawMusic();
  drawMusicButtons();
  setup2();
textdraw();
  
}//End draw
//
void keyPressed() {
  keyPressedMusic();
}
  //
  //proto
  //End keyPressed

void mousePressed() {
  mousePressedMusic();
}//End mousePressed
//
//End MAIN Program (Driver)
