import gifAnimation.*;

// Objekt
GifMaker gifExport;

void gifsetup() {
  println("gifAnimation " + Gif.version());
  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);
  gifExport.setDelay(50);
}

void gif(int frames) {

  if (frameCount == 1){
   gifsetup();
  }

  gifExport.addFrame();
  if (frameCount == frames) {
    gifExport.finish();
    println("gif saved");
    exit();
  }
}
