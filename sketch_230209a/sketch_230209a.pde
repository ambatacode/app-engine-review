float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;

void setup() {
  size(700, 400); //width, height
  float pauseStartDrawX = width * 1/2;
  float pauseStartDrawY = height *4/10;
  pauseScaleWidth = 1.0/25.0;
  pauseScaleHeight = 1.0/3.0;
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = pauseStartDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseStartDrawY;
  pauseX2 = pauseStartDrawX + pauseWidth*1/2;
  pauseY2 = pauseStartDrawY;
  pauseHeight = height * pauseScaleHeight;
  //
  float
  px1 = pauseX1;
  py1 = pauseY1;
  px2 = pauseX1;
  py2 = pausey1 - 3;
  px3 = pauseX2 + 3;
  py3 = pauseY2;
}//End setup
//
void draw() {
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  triangle(px1, py1, px2, py2, px3, py3);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
