
void setup() {
  size(700, 400); //width, height
  float pauseStartDrawX = width * 1/2;
  float pauseStartDrawY = height * 1/2;
  pauseScaleWidth = 1.0/25.0;
  pauseScaleHeight = 1.0/3.0;
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = pauseStartDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseStartDrawY;
  pauseX2 = pauseStartDrawX + pauseWidth*1/2;
  pauseY2 = pauseStartDrawY;
  pauseHeight = height * pauseScaleHeight;
  //
  stopX = pauseStartDrawX - (width * 14/30);
  stopY = pauseY1 ;
  stopW = pauseHeight;
  stopH = pauseHeight;
  //
  SBBX1 = pauseStartDrawX - (width * 2./25);
  SBBY1 = pauseStartDrawY;
  SBBX2 = SBBX1;
  SBBY2 = pauseStartDrawY - (height * -3./10);
  SBBX3 = pauseStartDrawX - (width * 6/25);
  SBBY3 = pauseY1 - (height * -1.6/10);
  //
  SW = width * 0.6/20.0;
  BRX1 = pauseStartDrawX - (width * 6/25);
  BRY2 = pauseStartDrawY;
  BRW = SW;
  BRH = pauseHeight;
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
