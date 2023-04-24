float skipwidth;
float BOXW, BOXH, newW ;
float appWidth, appHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopW, stopH;
color resetcolourNight=#FFFF4B, lightgreen=#57CC99;//night mode friendly
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
float CEX, CEY;
float TBX, TBY, TBW, TBH;
float MBAX, MBAY, MBAW, MBAH;
//
void setup2() {
  appWidth = width; //displayWidth
   appHeight = height; //displayHeight
  strokeWeight(8);
  strokeJoin(ROUND);
  stroke(#a0e8af);
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
   SBTY1 = SBY;
   SBTX2 = SBTX1 * 12/10;
   SBTY2 = SBY * 12/11;
   SBTX3 = SBTX2;
   SBTY3 = SBY * 11/12;
   
   BOXW = pauseHeight * 1.1/2;
   newW = buttonReferentMeasure;
   skipwidth = pauseHeight * 3.4/3;
   
   CEX = pauseStartDrawX;
   CEY = pauseY1 * 12.9/12;
   
   TBX = width * 18/20;
   TBY = 0;
   TBW = width * 1/10;
   TBH = height;
   
   MBAX = width * 23/25;
   MBAY = height * 1/20;
   MBAW = pauseHeight * 3/4;
   MBAH = pauseHeight * 3/4;
}
