
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
  
}//End setup
//
void draw() {
  drawSkipBackButton();
  drawStopButton();
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  //
  
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
