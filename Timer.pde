float r;
int startLoop = 0;
float ss = 1.0;
int direction = 1;
float d = 2.0;

int yy;
void Time() {

  if (millis() < startLoop+60000) {      //1000 = 1sec
    d += ss * direction;

yy = 100;
    noStroke();
    fill(0);
    rectMode(CENTER);
    rect(width/2, yy, d+r, r);

    stroke(0);
    line(width/2-(d+r)/2, 0, width/2-(d+r)/2, height);
    line(width/2+(d+r)/2, 0, width/2+(d+r)/2, height);
    line(0, yy-r/2, width, yy-r/2);
    line(0, yy+r/2, width, yy+r/2);
  }
}
