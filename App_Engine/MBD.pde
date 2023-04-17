
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
      if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight && mousePressed == true && rahrah == false) {
        stroke(#a0e8af);
  fill( #FF9BF9 );
  triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
  noFill();
  noStroke();
    drawCoverElipse();
} else if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight) {
fill( #00FFF0 );
stroke(#a0e8af);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  noFill();
  noStroke();
} else {
  stroke(#a0e8af);
  fill( #57CC99 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  noFill();
  noStroke();
}
  } else {
      if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight && mousePressed == true && rahrah == false) {
        stroke(#a0e8af);
 fill( #FF9BF9 );
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  noFill();
  noStroke();
  drawCoverElipse();
} else if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight) {
  stroke(#a0e8af);
fill( #00FFF0 );
  triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
  noFill();
  noStroke();
} else {
  stroke(#a0e8af);
  fill( #57CC99 );
  triangle(PBX1, PBY1,PBX2, PBY2,PBX3, PBY3);
  noFill();
  noStroke();
}
    
}

}
//
void drawStopButton() {
if (mouseX>=stopX && mouseX<=stopX+stopW && mouseY>=stopY && mouseY<= stopY+stopH && mousePressed == true ) {
  stroke(#a0e8af);
    fill( #FF9BF9 );
  rect(stopX, stopY, stopW, stopH,15);
  noFill();
  noStroke();
} else if (mouseX>=stopX && mouseX<=stopX+stopW && mouseY>=stopY && mouseY<= stopY+stopH) {
  stroke(#a0e8af);
  fill( #00FFF0 );
  rect(stopX, stopY, stopW, stopH,15);
  noFill();
  noStroke();
} else {
  stroke(#a0e8af);
  fill( #57CC99 );
  rect(stopX, stopY, stopW, stopH,15);
  noFill();
  noStroke();
}

}//end 
//
void drawSkipBackButton(){
  if (mouseX>=BRX1 && mouseX<=BRX1+skipwidth && mouseY>=BRY2 && mouseY<=BRY2+pauseHeight && mousePressed == true) {
    stroke(#a0e8af);
    fill( #FF9BF9 );
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
  noFill();
  noStroke();
  } else if (mouseX>=BRX1 && mouseX<=BRX1+skipwidth && mouseY>=BRY2 && mouseY<=BRY2+pauseHeight) {
fill( #00FFF0 );
stroke(#a0e8af);
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
  noFill();
  noStroke();
  } else {
    stroke(#a0e8af);
    fill( #57CC99 );
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
  noFill();
  noStroke();
  }
}
//
void drawLoopButton() {
  if (mouseX>=LBX1 && mouseX<=LBX1+LBW && mouseY>=LBY1 && mouseY<= LBY1+LBH && mousePressed == true) {
    stroke(#a0e8af);
      fill( #FF9BF9);
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
  noFill();
noStroke();
  } else if (mouseX>=LBX1 && mouseX<=LBX1+LBW && mouseY>=LBY1 && mouseY<= LBY1+LBH) {
    stroke(#a0e8af);
      fill( #00FFF0 );
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
  noFill();
  noStroke();
  } else {
    stroke(#a0e8af);
      fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(LBX1, LBY1, LBW, LBH);
  ellipseMode(CENTER);
  noFill();
  noStroke();
  }
}
//
void drawSkipForwardButton() {
  if (mouseX>=SFBX1 && mouseX<=SFBX1+skipwidth && mouseY>=FRY1 && mouseY<=FRY1+pauseHeight && mousePressed == true) {
    stroke(#a0e8af);
    fill( #FF9BF9 );
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
  noFill();
  noStroke();
  } else if (mouseX>=SFBX1 && mouseX<=SFBX1+skipwidth && mouseY>=FRY1 && mouseY<=FRY1+pauseHeight) {
    stroke(#a0e8af);
    fill( #00FFF0 );
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
  noFill();
  noStroke();
  } else {
    stroke(#a0e8af);
    fill( #57CC99 );
  triangle(SFBX1, SFBY1, SFBX2, SFBY2, SFBX3, SFBY3);
  rect(FRX1, FRY1, FRW, FRH, 41);
  noFill();
  noStroke();
  }
}
//

void drawskipF() {
  stroke(#a0e8af);
  fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(SFX, SFY, SFL, SFH);
  triangle(SFTX1, SFTY1, SFTX2, SFTY2, SFTX3, SFTY3);
  noFill();
   noStroke();
}

void drawskipB() {
  stroke(#a0e8af);
  fill( #57CC99 );
  ellipseMode(CORNER);
  ellipse(SBX, SBY, SBL, SBH);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
  noFill();
  noStroke();
}

void drawMute() {
  fill( #57CC99 );
  rect(MX, MY, MH, ML);
  triangle(SBTX1, SBTY1, SBTX2, SBTY2, SBTX3, SBTY3);
  noFill();
}

void drawCoverElipse() {
      fill(night);
    stroke(night);
      ellipseMode(CENTER);
  ellipse(CEX,CEY,skipwidth,skipwidth);
  noFill();
  noStroke();
}
