
void setup() {
   appWidth = width; //displayWidth
   appHeight = height; //displayHeight
  strokeWeight(8);
  strokeJoin(ROUND);
  stroke(#a0e8af);
  size(1000,700); //width, height
  float startingX = appWidth * 1/2;
  float startingY = appHeight * 1/2;
  
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
  float buttonReferentMeasure = width*1/9;
  float buttonSide = buttonReferentMeasure;
  //
  
  stopX = pauseStartDrawX * 10/30;
  stopY = pauseY1 ;
  stopW = pauseHeight ;
  stopH = pauseHeight ;
  //
  SBBX1 = pauseStartDrawX * 19/25;
  SBBY1 = pauseStartDrawY;
  SBBX2 = SBBX1;
  SBBY2 = pauseStartDrawY * 11.4/10;
  SBBX3 = SBBX1 * 20/25;
  SBBY3 = SBBY1 * 4.29/4;
  //
  SW = width * 0.2/20.0;
  BRX1 = pauseStartDrawX * 14.6/25;
  BRY2 = pauseStartDrawY;
  BRW = SW;
  BRH = pauseHeight;
  //
  LBX1 = pauseStartDrawX * 45/30;
  LBY1 = pauseStartDrawY;
  LBW = pauseHeight;
  LBH = pauseHeight;
  //
  SFBX1 = pauseStartDrawX * 31/25 ;
  SFBY1 = pauseStartDrawY ;
  SFBX2 = SFBX1 ;
  SFBY2 = pauseStartDrawY * 11.4/10 ;
  SFBX3 = SFBX1 * 28/25;
  SFBY3 = SFBY1 * 4.29/4;
  //
  FRX1 = SFBX1 * 28.1/25;
  FRY1 = pauseStartDrawY;
  FRW = SW;
  FRH = pauseHeight;
  //
  PBX1 = pauseX1;
  PBY1 = pauseY1;
  PBX2 = pauseStartDrawX * 5.2/5 ;
  PBY2 = pauseStartDrawY * 5.35/5 ;
  PBX3 = pauseX1 ;
  PBY3 = pauseY1 * 5.7/5;
  
   SFX = pauseStartDrawX * 45/30;
   SFY = pauseStartDrawY * 6/10;
   SFL = pauseHeight;
   SFH = pauseHeight;
   
   SFTX1 = pauseStartDrawX * 48.3/30;
   SFTY1 = pauseStartDrawY * 6/10;
   SFTX2 = SFTX1 * 28.9/30;
   SFTY2 = SFTX1 * 3.7/10;
   SFTX3 = SFTX2;
   SFTY3 = SFTY1 * 10.7/10;
   
   SBX = pauseStartDrawX * 10/30;
   SBY = pauseStartDrawY * 6/10;
   SBL = pauseHeight;
   SBH = pauseHeight;
   
   SBTX1 = pauseStartDrawX * 11/30;
   SBTY1 = pauseStartDrawY * 6/10;
   SBTX2 = SBTX1 * 34.8/30;
   SBTY2 = SBTX1 * 18.6/10;
   SBTX3 = SBTX2;
   SBTY3 = SBTY1 * 9.5/10;
   
   BOXW = pauseHeight * 1.1/2;
   newW = buttonReferentMeasure;
   skipwidth = pauseHeight * 3.4/3;
}//End setup
//
void draw() {
  drawMusicButtons();
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 41);
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 41);
  //play hover
  if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight ) 
{
  println("pause n play");
}else
{ 

}
rect(pauseX1,pauseY1,BOXW,pauseHeight);
  //
  if (mouseX>=BRX1 && mouseX<=BRX1+skipwidth && mouseY>=BRY2 && mouseY<=BRY2+pauseHeight )
{
  println("omygyat");
}
else
{

} 
rect(BRX1, BRY2, skipwidth, pauseHeight );
//
if (mouseX>=SFBX1 && mouseX<=SFBX1+skipwidth && mouseY>=FRY1 && mouseY<=FRY1+pauseHeight )
{
  println("za za");
} 
else 
{

}
rect(SFBX1, FRY1, skipwidth, pauseHeight);
//
if (mouseX>=LBX1 && mouseX<=LBX1+LBW && mouseY>=LBY1 && mouseY<= LBY1+LBH){
 println("works");
} else {
  
}
rect(LBX1, LBY1, LBW, LBH);

if (mouseX>=stopX && mouseX<=stopX+stopW && mouseY>=stopY && mouseY<= stopY+stopH){
 println("worksx2");
} else {
  
}
rect(stopX, stopY, stopW, stopH);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  //play/pause
  
}//End mousePressed

//
//End MAIN Program (Driver)
