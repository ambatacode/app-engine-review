void menuSetup() {
  background(menunight);
}

void menuDraw() {
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
