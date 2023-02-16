
void setup() {
  strokeWeight(8);
  strokeJoin(ROUND);
  stroke(#a0e8af);
  size(1000,600); //width, height
  float pauseStartDrawX = width * 5/10;
  float pauseStartDrawY = height * 15/20;
  pauseScaleWidth = 1.0/75.0;
  pauseScaleHeight = 1.0/9.0;
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = pauseStartDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseStartDrawY;
  pauseX2 = pauseStartDrawX + pauseWidth*1/2;
  pauseY2 = pauseStartDrawY;
  pauseHeight = height * pauseScaleHeight;
  //
  
  stopX = pauseStartDrawX - (width * 11/30);
  stopY = pauseY1 ;
  stopW = pauseHeight ;
  stopH = pauseHeight ;
  //
  SBBX1 = pauseStartDrawX - (width * 3/25);
  SBBY1 = pauseStartDrawY;
  SBBX2 = SBBX1;
  SBBY2 = pauseStartDrawY - (height * -1.1/10);
  SBBX3 = SBBX1 * 20/25;
  SBBY3 = SBBY1 * 4.29/4;
  //
  SW = width * 0.2/20.0;
  BRX1 = pauseStartDrawX - (width * 5.3/25);
  BRY2 = pauseStartDrawY;
  BRW = SW;
  BRH = pauseHeight;
  //
  LBX1 = pauseStartDrawX - (width * -8/30);
  LBY1 = pauseStartDrawY;
  LBW = pauseHeight;
  LBH = pauseHeight;
}//End setup
//
void draw() {
  drawSkipBackButton();
  drawStopButton();
  drawLoopButton();
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
