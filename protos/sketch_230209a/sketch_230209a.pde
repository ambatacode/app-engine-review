
void setup() {
   size(1000,700); //width, height
  setup2();
}//End setup
//
void draw() {
  drawMusicButtons();
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  //play hover
  //

//
//


if (mouseX>=SFX && mouseX<=SFX+SFL && mouseY>=SFY && mouseY<= SFY+SFH){
 println("works222");
} else {
  
}


if (mouseX>=SBX && mouseX<=SBX+SBL && mouseY>=SBY && mouseY<= SBY+SBH){
 println("works");
} else {
  
}

}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //play/pause
  
}//End mousePressed

//
//End MAIN Program (Driver)
