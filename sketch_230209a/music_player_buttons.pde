//global variables\\
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopW, stopH;
color resetcolourNight=#FFFF4B, black=#000000, lightgreen=#57CC99;//night mode friendly
color resetcolourDay=#FFFFFF;
float SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3,BRX1, BRY2, BRW, BRH;
float SW;

//
void drawMusicButtons() {
  drawSkipBackButton();
  drawPausebutton();
  drawStopButton();
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
  rect(stopX, stopY, stopW, stopH, 22);
}//end 
//
void drawSkipBackButton(){
  triangle(SBBX1, SBBY1, SBBX2, SBBY2, SBBX3, SBBY3);
  rect(BRX1, BRY2, BRW, BRH, 41);
}
