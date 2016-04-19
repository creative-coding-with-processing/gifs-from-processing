import gifAnimation.*;

int gifframecount;

// Objekt
GifMaker gifExport;

void gifsetup() {
  println("gifAnimation " + Gif.version());
  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);
  gifExport.setDelay(50);
}

void gif(int frames, int savegifframe) {

  if (frameCount == 1){
   gifsetup();
  }
  
if (frameCount % savegifframe == 0){
  gifExport.addFrame();
  gifframecount++;
}
  if (frameCount / savegifframe == frames) {
    gifExport.finish();
    println("gif saved");
    exit();
  }
}
