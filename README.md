# app-engine-review
notes
 Stop
 // will stop the song compleetely
 //during most of the song it will stop the song and loop back to the start
 //after 90% it will just play the next song.

 previous track
 // will skip to the previous track.
 /// if it is the first song repeat the first song only

 reverse skip
 play-pause
 // if pressed the button will start or pause the song.
 // if at the end or 95% of the song the play button will change into a replay button (is not the loop)
 // if paused when pressing next song the skip button will 
 forward skip
 next track
 Loop Single Song Once
 Loop Single Song Infinite
 Loop Playlist Infinite
 Mute Button

//dont read down

[] Play-Pause: pressing the P keyboard button will ...
At anytime, pause will stop playing the file and hold the position in the file
Beginning of .mp3: play file
"Up to 90%" of .mp3: "let it play"
"After 90%": "skip to next its almost done"
ERROR: computer can play a song file, at the end of the file, but nothing will be heard in the speakers
[] Stop: pressing S will ...
pause() the current .mp3 file
rewind() the current .mp3 file so it is ready to play at the beginning of the file
ERROR: STOP does not exist, only pause()
[] Mute Button: pressing M will ... stop the speakers but computer will continue to play the file until 
----it ends
----ERROR: if the .mp3 file is muted AND .mp3 is at the end, then unMute() will rewind() the current .----mp3 and play from the beginning
[] Forward Skip: within a song for milliseconds or seconds (student decides how many seconds) 10
[] Reverse Skip: within a song for milliseconds or seconds (student decides how many seconds) 10
[] Next track:
Current Song:
---pause(index)
---rewind(index)
---index + 1
---Next Song
---play(index)
------Error, Array Index out of Bounds: array.length()-1 = 0
-------if ( index + 1 >= array.length ) { index = 0; }
[] Previous track:
---Current Song:
---pause(index)
---rewind(index)
index - 1
Next Song
play(index)
---Error, Array Index out of Bounds: when index=0, index-1=array.length()-1
---if ( index <= -1 ) { index = array.length() - 1; }
[] Loop Single Song Once: parameter = 1
[] Loop Single Song Infinite: parameter is -1 or blank
[] Loop Playlist Infinite: parameter = int ( random( 0, array.length() ) )
Caution: random returns a float
Fix with int(), called CASTING

//

[] Next & Previous Option: students to code
what happens if a song is playing
what happens if a song is not playing
Solution: after 10 seconds, the previous buttons plays the beginning of the current song
Press Previous Button twice, then play the previous song
[] Loop Single Song Once: parameter = 1
[] Loop Single Song Infinite: parameter is -1 or blank
[] Loop Playlist Infinite: parameter = int ( random( 0, array.length() ) )
Caution: random returns a float
Fix with int(), called CASTING