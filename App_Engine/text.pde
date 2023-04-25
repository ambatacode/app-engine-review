float BX, BY, BW, BH;
float BX2, BY2, BW2, BH2;
String balls = "paused";
String waggga = "Music";
PFont amongusballs;
color brandonC, red = #CE0000, brown = #000000, Notti = brown;
String rahrar = "X";
//image notti boolean
//image kyle richh

void textsetup() {
  //pop
  BX = width * 1/3;
  BY = height * 1/2;
  BW = displayWidth*1/5.8;
  BH = displayHeight*1/30;
  amongusballs = createFont("Comic Sans MS", 20);
    textAlign(CENTER);

}

void textdraw() {
  
  brandonC = red;
  noStroke();
  fill(night);
  rect(BX, BY, BW, BH);
  fill(Notti);
  textFont(amongusballs, 20);
  text(balls, BX, BY, BW, BH);

    //rect(BX2, BY2, BW2, BH2);
}
