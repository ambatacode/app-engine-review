//
int appWidth, appHeight;
float IMGbgX, IMGbgY, IMGbgW, IMGbgH;
PImage img;
//
size (500,100);
appWidth = width ;
appHeight = height ;
img = loadImage ("stock-photo-police-officer-partners-standing-together-659961820.jpg");
//
IMGbgX = appWidth*0;
IMGbgY = appHeight*0;
IMGbgW = appWidth-1;
IMGbgH = appHeight-1;
//
//
rect(IMGbgX, IMGbgY, IMGbgW, IMGbgH);
//
image(img, 0, 0);
