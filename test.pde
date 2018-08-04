int sii;
int w;
int h;

float wt ;
float ht;
float sit;
float yit;
float wtt;
float htt;

void Dom() {
  background(255);
  si = 100;
  w = width;
  h = height;
  strokeWeight(5);

  frameRate(5);

  wt =random(w);
  ht = random(h);
  sit = random(sii);
  yit = random(sii+10);
  wtt = random(500);
  htt = random(500);

  rectMode(CENTER);
  fill(233, 0, 0);
  rect(wt, ht, sit, sit);


  line(wt-sit/2, 0, wt-sit/2, height);
  line(wt+sit/2, 0, wt+sit/2, height);
  line(0, ht+sit/2, width, ht+sit/2);
  line(0, ht-sit/2, width, ht-sit/2);


  rectMode(CENTER);
  fill(255, 223, 0);
  rect(wtt, htt, yit, yit);

  line(wtt-yit/2, 0, wtt-yit/2, height);
  line(wtt+yit/2, 0, wtt+yit/2, height);
  line(0, htt+yit/2, width, htt+yit/2);
  line(0, htt-yit/2, width, htt-yit/2);
}
