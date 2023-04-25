void menuSetup() {
  background(menunight);
}

void menuDraw() {
  fill(menunight);
  stroke(menunight);
  rect(0,0,width,height);
  noStroke();
  noFill();
  stroke(#317E00);
  fill(#317E00);
  rect(TBX, TBY, TBW, TBH,22);
  noStroke();
  noFill();
  fill(#58AD00);
  stroke(#58AD00);
  rect(MBAX, MBAY, MBAW, MBAH);
  noStroke();
  noFill();
    fill(Notti);
  textFont(amongusballs, 21);
  text(waggga, MBAX, MBAY, MBAW, MBAH);
  noFill();
  
}

void menumousePressed() {
  if (mouseX>= MBAX && mouseX<=MBAX+MBAW && mouseY>=MBAY && mouseY<=MBAY+MBAH){
    if (menu == true && music == false){
          menu = false;
    music = true;
    } else if(menu == false && music == true) { 
                menu = true;
    music = false;
    }
  }
}
