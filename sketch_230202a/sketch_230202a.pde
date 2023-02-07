import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//
String Path = new File(""). GetAbsolutePath(); //exported uses
String directory = "\\FS-052\studuser$\Gr11\n.borja\My Documents\app-engine-review\sketch_230202a"; //Not exported uses

//
void setup() 
{
  File dir = new File(Path);//NULL if not export
  File[] Filelist;
  if(dir == null) {
    dir = new File(directory);
    Filelist = dir.listFiles();
    for (File file : FileList) {
    if (file.isFile() ) {
      if (file.toString().endsWith(".mp3) ) {
        songs = minim.loadFile( file.getname() );
      }
    }
    }     
  } else {
    File[] File List = dir.listFiles(); //Exported Folder
  }//Catch when NULL, not exported

}
//
void draw() []//End draw
//
void keyPressed() []//End keyPressed
//
void mousePressed() []//End mousePressed
//
