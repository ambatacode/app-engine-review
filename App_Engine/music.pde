//global variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2];
AudioPlayer[] soundEffects = new AudioPlayer[2];//creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
String pathway, cycles, newsroom, springatticdoor, string;
int currentSong;
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  // set dir to the music
  //Pathway; data/ music or sound effect files
  //
  //fix os so it reads pathway and files 
  //
  concatenationofmusicFiles();
  songs[0] = minim.loadFile( pathway + cycles );
  songs[1] = minim.loadFile( pathway + newsroom );
  soundEffects [0] = minim.loadFile( pathway + springatticdoor );
  soundEffects [1] = minim.loadFile( pathway + string );
  //
}
//
void drawMusic() {
}//End drawMusic
//
void keyPressedMusic() {
  if(key == 'm' || key == 'M') {
    if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if( songs[currentSong].position() >= songs[currentSong].length()*4/5) { 
    //skip to next song
    //songs[currentSong].();
  }
  
  else{
    songs[currentSong].mute();
    
  }//mute
  
}//end mute button
  
}//End keyPressedMusic
//
void mousePressedMusic() {
}//End mousePressedMusic
void concatenationofmusicFiles() {
  pathway = "data/";
  cycles = "Cycles.mp3";
  newsroom = "Newsroom.mp3";
  springatticdoor = "FreeWare Music_SoundEffect_Spring_Attic_Door.mp3";
  string = "FreeWare Music_SoundEffect_The_Simplest_Sting.mp3";
}
//
//End Music SubProgram
