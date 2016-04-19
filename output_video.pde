import com.hamoid.*;

VideoExport videoExport;


void videosetup() {
  videoExport = new VideoExport(this, "basic.mp4");
}

void video(int frames) {

  if (frameCount == 1){
   videosetup(); 
  }
  
 videoExport.saveFrame();
  if (frameCount == frames) {
    exit();
  }
}