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
  if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight && mousePressed == true) {
  fill( #FF9BF9 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  noFill();
} else if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight) {
fill( #00FFF0 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  noFill();
} else {
  fill( #57CC99 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  noFill();
}
}
//
void drawStopButton() {
if (mouseX>=stopX && mouseX<=stopX+stopW && mouseY>=stopY && mouseY<= stopY+stopH && mousePressed == true ) {
    fill( #FF9BF9 );
  rect(stopX, stopY, stopW, stopH,15);
  noFill();
} else if (mouseX>=stopX && mouseX<=stopX+stopW && mouseY>=stopY && mouseY<= stopY+stopH) {
  fill( #00FFF0 );
  rect(stopX, stopY, stopW, stopH,15);
  noFill();
} else {
  fill( #57CC99 );
  rect(stopX, stopY, stopW, stopH,15);
  noFill();
}

}//end 
//
void drawSkipBackButton(){
  if (hovered3 == false) {
    fill( #57CC99 );
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
  noFill();
  } else if (hovered3 == true) {
fill( #00FFF0 );
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
  noFill();
  } else {
    fill( #57CC99 );
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
  noFill();
  }
}
//
void drawLoopButton() {
  if (hovered5 == false) {
      fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
  noFill();
  } else if (hovered5 == true) {
      fill( #00FFF0 );
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
  noFill();
  } else {
      fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
  noFill();
  }
}
//
void drawSkipForwardButton() {
  if (hovered4 == false) {
    fill( #57CC99 );
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
  noFill();
  } else if (hovered4 == true) {
    fill( #00FFF0 );
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
  noFill();
  } else {
    fill( #57CC99 );
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
  noFill();
  }
}
//
void drawPlayButton() {
  fill( #57CC99 );
triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
noFill();
}

void drawskipF() {
  fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(SFX, SFY, SFL, SFH);
  ellipseMode(CENTER);
  triangle(SFTX1, SFTY1, SFTX2, SFTY2, SFTX3, SFTY3);
  noFill();
}

void drawskipB() {
  fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(SBX, SBY, SBL, SBH);
  ellipseMode(CENTER);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
  noFill();
}

void drawMute() {
  fill( #57CC99 );
  rect(MX, MY, MH, ML);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
  noFill();
}
