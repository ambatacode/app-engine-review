//global variables
boolean AutoPlayOn = false;
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
  println("current song position;",songs[currentSong].position() );
  //
  AutoPlayMusic();
  //auto play
}//End drawMusic
//
//MUTE BUTTON---MUTE BUTTON---MUTE BUTTON---MUTE BUTTON---MUTE BUTTON---MUTE BUTTON---
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
    
  }//MUTE END---MUTE END---MUTE END---MUTE END---MUTE END---MUTE END---MUTE END---
  
 }//SKIP---SKIP---SKIP---SKIP---SKIP---SKIP---SKIP---SKIP---SKIP---SKIP---SKIP---
 if (key == 'f' || key == 'F') {
   songs[currentSong].skip(5000);
 } else if (songs[currentSong].position() >= songs[currentSong]. length()*9/10);
   //if else () my choice
 //end
 if (key == 'r' || key == 'R'){ 
   //double tap r = reset
   songs[currentSong].skip(-5000);//miliseconds
 }//SKIP END---SKIP END---SKIP END---SKIP END---SKIP END---SKIP END---SKIP END---
 //
 //Single loop
 /*
 - ---issues---
 - the computer wont read the number of loops. it just loops into infinity
 - 
 */
 if (key == '1'){
   if(songs[currentSong].isPlaying() ) {
     songs[currentSong].pause();
     songs[currentSong].loop(0);
   } else {
     //songs[currentSong].loop(0);
   }
   //finish song then replays
   //delay(songs[currentSong].length() - songs[currentSong].position());
   //issue delay stops errything. comp doesnt realize song plays
   //songs[currentSong].loop(0);
 }
   //
   //loop to inf
   if (key == '9' && key !='1' ){
     if ( songs[currentSong].isPlaying() ) {
       songs[currentSong].pause();
       songs[currentSong].loop(-1);
       songs[currentSong].play();
     } else {
       //songs[currentSong].loop(-1);
     }
   //finish song then replays for inf
   //delay(songs[currentSong].length() - songs[currentSong].position());
   //loop inf
   //songs[currentSong].loop(-1);
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
//auto
if (key == 'o'|| key == 'O') {
  if (AutoPlayOn = false) {
  AutoPlayOn = true;
} else {
AutoPlayOn = false;
}
}
//
 if ( key == 'n' || key =='N' ) {
    if ( songs[currentSong].isPlaying() ) {
      //Empty IF
      //If you code a next button to be active when a song is playing ...
      //Must include .pause()
      //If the current song is playing, then pressing the next button
      //play the next song
      //Must include .play()
    } else if ( currentSong == songs.length - 1 ) { //ERROR Catch: ArrayOutOfBounds
      currentSong = songs.length - songs.length; //Intention is Zero
      songs[currentSong].rewind();
      songs[currentSong].play();//Intention is Zero, beginning of play list
    } else {
      currentSong++;
       songs[currentSong].rewind();
      songs[currentSong].play();
    }
  }
}//End keyPressedMusic

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
void AutoPlayMusic() {
  //
  if (AutoPlayOn) {
    //if() {} else if () {} else {}
    //songs[currentSong].is playing, when false rewind, currentSong+1;
    //songs[currentSong].play();
  }
  
}
//End Music SubProgram
