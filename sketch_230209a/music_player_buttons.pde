//global variables\\
float skipwidth;
float BOXW, BOXH, newW ;
float appWidth, appHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopW, stopH;
color resetcolourNight=#FFFF4B, black=#000000, lightgreen=#57CC99;//night mode friendly
color resetcolourDay=#FFFFFF;
float SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3, BRX1, BRY2, BRW, BRH;
float SW;
float LBX1, LBY1, LBW, LBH, SW2;
float SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3, FRX1, FRY1, FRW, FRH ;
float PBX1, PBY1, PBX2, PBY2, PBX3, PBY3;
float SFX, SFY, SFL, SFH;
float SFTX1, SFTY1, SFTX2, SFTY2, SFTX3, SFTY3;
float SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3;
float SBX, SBY, SBL, SBH;
float MX, MY, MH, ML;
//
void drawMusicButtons() {
  drawPlayButton();
  drawLoopButton();
  drawSkipBackButton();
  drawPausebutton();
  drawStopButton();
  drawSkipForwardButton();
  drawskipF();
  drawskipB();
  drawMute();
}

//
void drawPausebutton() {
  fill(lightgreen);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
}
//
void drawStopButton() {
  fill( #57CC99 );
  rect(stopX, stopY, stopW, stopH,15);
}//end 
//
void drawSkipBackButton(){
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
}
//
void drawLoopButton() {
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
}
//
void drawSkipForwardButton() {
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
}
//
void drawPlayButton() {
triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
}

void drawskipF() {
  ellipseMode(CORNER);
  ellipse(SFX, SFY, SFL, SFH);
  ellipseMode(CENTER);
  triangle(SFTX1, SFTY1, SFTX2, SFTY2, SFTX3, SFTY3);
}

void drawskipB() {
  ellipseMode(CORNER);
  ellipse(SBX, SBY, SBL, SBH);
  ellipseMode(CENTER);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
}

void drawMute() {
  rect(MX, MY, MH, ML);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
}
