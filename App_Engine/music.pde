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
  
 }
 if (key == 'f' || key == 'F') {
   songs[currentSong].skip(5000);
 } else if (songs[currentSong].position() >= songs[currentSong]. length()*9/10);
   //if else () my choice
 //end
 if (key == 'r' || key == 'R'){ 
   //double tap r = reset
   songs[currentSong].skip(-5000);//miliseconds
 }
 //
 //Single loop
 if (key == '1'){
   if(songs[currentSong].isPlaying() ) {
     songs[currentSong].pause();
   } else {
     songs[currentSong].loop(0);
   }
   //finish song then replays
   //delay(songs[currentSong].length() - songs[currentSong].position());
   //issue delay stops errything. comp doesnt realize song plays
   songs[currentSong].loop(0);
 }
   //
   //loop to inf
   if (key == '9' && key !='1' ){
   //finish song then replays for inf
   delay(songs[currentSong].length() - songs[currentSong].position());
   //loop inf
   songs[currentSong].loop(-1);
   //
   //stop
 }
 //
 if (key == 's' || key =='S') {
   if ( songs[currentSong].isPlaying() ) {
     songs[currentSong].pause(); 
     songs[currentSong].rewind(); 
     } else {
   songs[currentSong].rewind();
  }
 
 }
 if (key == 'p' || key == 'P') {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if (songs[currentSong].position() >= songs[currentSong]. length()*9/10) {
    songs[currentSong].rewind();
  } else {
    songs[currentSong].play();
  }
}//end pause
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
