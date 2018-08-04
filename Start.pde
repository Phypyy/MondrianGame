

void Start() {
  background(255);


  rectMode(CORNERS);
  fill(240);
  rect(300, 300, 960, 500);

  textAlign(CENTER, CENTER);
  fill(0);
  textSize(72);
  text("SPACEBAR", width/2, height/2);
}
