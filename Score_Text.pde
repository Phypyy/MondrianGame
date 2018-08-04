
void ScoreText() {

  rectMode(CENTER);
  noFill();
  stroke(0);
  strokeWeight(5);
  rect(1500, 50, 200, 40);

  rectMode(CENTER);
  stroke(0);
  strokeWeight(5);
  fill(233, 0, 0);
  rect(1490, 50, 20, 20);

  textAlign(CENTER, CENTER);
  fill(0);
  textFont(font, 28);
  text(""+nr, 1530, 50);

  rectMode(CENTER);
  noFill();
  stroke(0);
  strokeWeight(5);
  rect(400, 50, 200, 40);

  rectMode(CENTER);
  stroke(0);
  strokeWeight(5);
  fill(0, 102, 204);
  rect(390, 50, 20, 20);

  textAlign(CENTER, CENTER);
  fill(0);
  textFont(font, 28);
  text(""+nb, 430, 50);
}
