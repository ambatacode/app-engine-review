
void setup() {
  strokeWeight(7);
  strokeJoin(ROUND);
  stroke(#c7f9cc);
  size(1000,600); //width, height
  float pauseStartDrawX = width * 1/2;
  float pauseStartDrawY = height * 2.5/4;
  pauseScaleWidth = 1.0/25.0;
  pauseScaleHeight = 1.0/3.0;
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = pauseStartDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseStartDrawY;
  pauseX2 = pauseStartDrawX + pauseWidth*1/2;
  pauseY2 = pauseStartDrawY;
  pauseHeight = height * pauseScaleHeight;
  //
  
  stopX = pauseStartDrawX - (width * 13/30);
  stopY = pauseY1 - (height * -1.5/30) ;
  stopW = pauseHeight * 5/7;
  stopH = pauseHeight * 5/7;
  //
  SBBX1 = pauseStartDrawX - (width * 3/25);
  SBBY1 = pauseY1 - (height * -1./30);
  SBBX2 = SBBX1;
  SBBY2 = pauseStartDrawY - (height * -2.9/10);
  SBBX3 = pauseStartDrawX - (width * 6./25);
  SBBY3 = pauseY1 - (height * -1.6/10);
  //
  SW = width * 0.6/20.0;
  BRX1 = pauseStartDrawX - (width * 6/25);
  BRY2 = pauseStartDrawY - (height * 0.45/-8);
  BRW = SW;
  BRH = pauseHeight - (height * 1/8);
  //
}//End setup
//
void draw() {
  drawSkipBackButton();
  drawStopButton();
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  //
  
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
