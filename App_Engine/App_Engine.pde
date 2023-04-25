import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
color night = #FF9F00;
color menunight = #075200;
boolean menu = true;
boolean music = false;
boolean weather = false;

void setup() {
  setupMusic();
  textsetup();
  size(1000,700);
  if (menu == false && music == true)background(night);
  //
  menuSetup();
}//End setup
//
void draw() {
  if (menu == false && music == true)drawMusic();
  if (menu == false && music == true)drawMusicButtons();
  setup2();
if (menu == false && music == true)textdraw();
if (menu == true && music == false)menuDraw();
}//End draw
//
void keyPressed() {
  if (menu == false && music == true)keyPressedMusic();
}
  //
  //proto
  //End keyPressed

void mousePressed() {
  if (menu == false && music == true)mousePressedMusic();
  menumousePressed();
}//End mousePressed
//
//End MAIN Program (Driver)
