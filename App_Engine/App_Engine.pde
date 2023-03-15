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
  size(750,800);
  //
  songs[currentSong].loop(0); //Change the index manually
}//End setup
//
void draw() {
  drawMusic();
  
  
}//End draw
//
void keyPressed() {
  keyPressedMusic();
}
  //
  //proto
  //End keyPressed

void mousePressed() {
}//End mousePressed
//
//End MAIN Program (Driver)
