import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//
String Path = new File(""). GetAbsolutePath(); //exported uses
String directory = "//FS-052/studuser$/Gr11/n.borja/My Documents/app-engine-review/sketch_230202a"; //Not exported uses
//
Minim minim;
AudioPlayer[] songs = new AudioPlayer[5];//makes playlist recomended use mp3
//
void setup() {
  //
  minim = new Minim (this)// load from data directory, same as text/images
  //
  File anyDirectory = new File(path); //Used when exported
  println ("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items in FileList:", FileListAnyDirectory.length);
  int i = 0;
  for (File file : FileListAnyDirectory) {
    if ( file.isFile() ) {
      if ( file.toString().endsWith(".mp3") ) {
        println("Any Directory is working");
        songs[i] = minim.loadFile( file.getName() );
        i = i + 1;
      }
    }
  songs[0].loop(0);//changes index
}
//
file[] FileListGithubDir = githubDirectory.listfiles()
if (songs[0] ==null) {
  printArray(fileListGithubDir);
  for (File file; FileListGithubDir) {
    if (file.isFile() ) {
      if ( file.toString().endsWith(".mp3") {
        println("File Name .mp3 only", file.getName() );
        songs[i] =  minim.loadFile(file.getName());
        i+=1;
      }
    }
  }
}
void draw() {
 size(800,400);
}
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program (Driver)
