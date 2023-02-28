//global variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[16]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  // set dir to the music
  //Pathway; data/ music or sound effect files
  //
  //fix os so it reads pathway and files 
  //
  concatenation of musicFiles();
  songs[] = minim.loadfile(path + musicFile);
  soundEffects [] = minim.loadfile(path + soundEffectFile);
}
//
void drawMusic() {
}//End drawMusic
//
void keyPressedMusic() {
}//End keyPressedMusic
//
void mousePressedMusic() {
}//End mousePressedMusic
void concatenation() {
  path = "data/"
  Groove = "groove.mp3";
}
//
//End Music SubProgram
