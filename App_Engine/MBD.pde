
void drawMusicButtons() {
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
  if (songs[currentSong].isPlaying()) {
      if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight && mousePressed == true) {
  fill( #FF9BF9 );
  triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
  stroke(#003E1D);
  fill(#003E1D);
  rect( PBX1, PBY1, BOXW, pauseHeight);
  noFill();
  noStroke();
} else if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight) {
fill( #00FFF0 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  noFill();
} else {
  fill( #57CC99 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  noFill();
}
  } else {
      if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight && mousePressed == true) {
  fill( #FF9BF9 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  stroke(#003E1D);
  noFill();
  fill(#003E1D);
  strokeWeight(10);
  rect( PBX1, PBY1, BOXW, pauseHeight);
  noFill();
    noStroke();
    strokeWeight(8);
  
} else if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight) {
fill( #00FFF0 );
  triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
  noFill();
} else {
  fill( #57CC99 );
  triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
  noFill();
}
    
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
  if (mouseX>=BRX1 && mouseX<=BRX1+skipwidth && mouseY>=BRY2 && mouseY<=BRY2+pauseHeight && mousePressed == true) {
    fill( #FF9BF9 );
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
  noFill();
  } else if (mouseX>=BRX1 && mouseX<=BRX1+skipwidth && mouseY>=BRY2 && mouseY<=BRY2+pauseHeight) {
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
  if (mouseX>=LBX1 && mouseX<=LBX1+LBW && mouseY>=LBY1 && mouseY<= LBY1+LBH && mousePressed == true) {
      fill( #FF9BF9);
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
  noFill();
  } else if (mouseX>=LBX1 && mouseX<=LBX1+LBW && mouseY>=LBY1 && mouseY<= LBY1+LBH) {
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
  if (mouseX>=SFBX1 && mouseX<=SFBX1+skipwidth && mouseY>=FRY1 && mouseY<=FRY1+pauseHeight && mousePressed == true) {
    fill( #FF9BF9 );
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
  noFill();
  } else if (mouseX>=SFBX1 && mouseX<=SFBX1+skipwidth && mouseY>=FRY1 && mouseY<=FRY1+pauseHeight) {
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

void drawskipF() {
  fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(SFX, SFY, SFL, SFH);
  triangle(SFTX1, SFTY1, SFTX2, SFTY2, SFTX3, SFTY3);
  noFill();
}

void drawskipB() {
  fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(SBX, SBY, SBL, SBH);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
  noFill();
}

void drawMute() {
  fill( #57CC99 );
  rect(MX, MY, MH, ML);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
  noFill();
}
