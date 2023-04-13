//global variables
boolean PSS = false;
boolean AutoPlayOn = false;
boolean RW = false;
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
void keyPressedMusic() {
    if(key == 'm' || key == 'M') {
      mute();
 }
 if (key == 'f' || key == 'F') {
   if (songs[currentSong].isPlaying()){
   songs[currentSong].skip(5000);
 } else {
   currentSong++;
   songs[currentSong].rewind();
   songs[currentSong].play();
 }
 }
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
   stopbutton();
 }
 if (key == 'p' || key == 'P') {
   play();  
}//end pause
//auto
if (key == 'o'|| key == 'O') {
  if (AutoPlayOn == false) {
  AutoPlayOn = true;
} else {
AutoPlayOn = false;
}
}
  if (key == 'B' || key == 'b') {
    if(songs[currentSong].isPlaying()) {
      if(currentSong <= songs.length - songs.length) {
        songs[currentSong].mute();
        currentSong = songs.length - 1;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
        RW = true;
    } else {
      RW = false;
    } if (RW == false){
      songs[currentSong].mute();
        currentSong--;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
    }
  }
  }
//
 if ( key == 'n' || key =='N' ) {
    if ( songs[currentSong].isPlaying() ) {
      if ( currentSong == songs.length - 1 ){
        songs[currentSong].mute();
        currentSong = songs.length - songs.length;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
        RW = true;
      } else {
        RW = false;
      }
      if (RW == false) {
         songs[currentSong].mute();
        currentSong++;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
     //Empty IF
    }
  }
}

if (AutoPlayOn) {
  if (AutoPlayOn == false);
}
//End keyPressedMusic

}
void mousePressedMusic() {
  if (mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight) {
    play();
  }
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
  
  }

void mute() {
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if( songs[currentSong].position() >= songs[currentSong].length()*4/5) { 
    //skip to next song
    //songs[currentSong].();
  }
  
  else{
    songs[currentSong].mute();
    
  }
  
}
void stopbutton() {
  if ( songs[currentSong].isPlaying() ) {
     songs[currentSong].pause(); 
     songs[currentSong].rewind();
     PSS = true;
     } else {
   songs[currentSong].rewind();
   PSS = false;
  }
}
void play() {
  if ( songs[currentSong].isPlaying() ) {
    if (AutoPlayOn == true){
      AutoPlayOn = false;
      PSS = true;
    }
    songs[currentSong].pause();
  } else if (songs[currentSong].position() >= songs[currentSong]. length()*9/10) {
    songs[currentSong].rewind();
  } else {
    songs[currentSong].play();
    if ( PSS == true ){
      AutoPlayOn = true;
      PSS = false;
    }
  }
}
// auto
void autoPlayMusic() { //auto-Play button
  if ( AutoPlayOn ) {
    if ( AutoPlayOn == true ) {
    } if ( songs[currentSong].isPlaying() ) {
    } else {
      if ( currentSong == songs.length - 1 ) { //ERROR catch:
        songs[currentSong].mute();
        currentSong = songs.length - songs.length; // intention is zero
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
        RW = true;
        // if at the end of playlist this sets it to zero
      } else {
        RW = false;
      } 
      if ( RW == false ) {
        songs[currentSong].mute();
        currentSong++;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
      }
    }
  }//end autoPlayOn
}//end autoPlayMusic

//End Music SubProgram
