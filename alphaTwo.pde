import processing.sound.*;
SoundFile fileStart;
SoundFile fileBounce;
SoundFile fileOver;


float si;                                         //size of ball
float padY = 100;
float y = 100;
float speed = 50;

float xpos, ypos;                                 //position of ball

float xspeed = 1;                                 //speed of ball
float yspeed = 1;

int xdir = 1;                                     //Left-Right
int ydir = 1;                                     //Top-Bottom


int padH = 200;                                   //Player
int padW = 30;

int nr = 0;
int nb = 0;

int s;


PFont font;

int hightB = 2;                                    //Blue score
int hightR = 2;                                    //Red score

float Ex;
float Ey;
float Esi;
float Exx, Eyy;
float Esii;


void setup() {
  fullScreen();
  stroke(255);
  //noCursor();    //not show mouse
  newStart();

  //frameRate(59);
  xpos = width/2;
  ypos = height/2;

  font = loadFont("Rockwell-Condensed-20.vlw");

  sii = 300;
  w = width;
  h = height;

  wt =random(w);
  ht = random(h);
  sit = random(sii);
  yit = random(sii+20);
  wtt = random(500);
  htt = random(500);

  Ex = random(500, 1500); 
  Ey = random(300, 700);
  Esi = random(100, 150);
  Exx = random(width);
  Eyy = random(height);
  Esii = random(150, 200);

  si = 80;

  fileStart = new SoundFile(this, "background.mp3");
  fileStart.loop();
  fileBounce = new SoundFile(this, "bounce.mp3");
  //fileOver = new SoundFile(this, "over2.mp3");
}

void newStart() {

  r=40;
  d = 2.0;
  startLoop= millis();
}

void draw() {

  background(255);
  ScoreText();
  Time();

  //-----------------------BALL MOVE----------------------------------

  if ((xpos+si/2 > padX2-15) && (ypos >= padY-100) && (ypos <= padY+100)) {        //pad1
    xdir = -xdir;
    xspeed = xspeed +0.2;
    //si = si+ random(-2, 6);
    fileBounce.play();
  } else if ((xpos-si/2 < padX1+15) && (ypos >= y-100) && (ypos <= y+100)) {       //pad2
    xdir = -xdir;
    xspeed = xspeed +0.2;
    //si = si+ random(-2, 6);
    fileBounce.play();
  }


  if (xpos+si/2 > width) {
    xdir = -xdir;
    //setup();
    xspeed = 5;
    nb = nb +1;

    fileBounce.play();
  }

  if (xpos-si/2 < 0) {
    xdir = -xdir;
    //setup();
    xspeed = 5;
    nr = nr +1;
    fileBounce.play();
  }


  if (ypos+si/2 > height) {
    ydir = -ydir;
    fileBounce.play();
  }
  if (ypos-si/2 < 0) {
    ydir = -ydir;
    fileBounce.play();
  }

  xpos = xpos + xdir;
  ypos = ypos + ydir;

  LineP2();

  Player2();

  Player1();

  LineP1();

  Ball();

  if (nb == hightB/2) {

    rectMode(CENTER);
    fill(0);
    rect(Ex, Ey, Esi, Esi);
    line(Ex-Esi/2, 0, Ex-Esi/2, height);
    line(Ex+Esi/2, 0, Ex+Esi/2, height);
    line(0, Ey-Esi/2, width, Ey-Esi/2);
    line(0, Ey+Esi/2, width, Ey+Esi/2);
  } else {
    rectMode(CENTER);

    noFill();
    rect(Exx, Eyy, Esii, Esii);
    line(Exx-Esii/2, 0, Exx-Esii/2, height);
    line(Exx+Esii/2, 0, Exx+Esii/2, height);
    line(0, Eyy-Esii/2, width, Eyy-Esii/2);
    line(0, Eyy+Esii/2, width, Eyy+Esii/2);
  }

  if (nr == hightR/2) {

    rectMode(CENTER);
    fill(0);
    rect(Ex, Ey, Esi, Esi);
    line(Ex-Esi/2, 0, Ex-Esi/2, height);
    line(Ex+Esi/2, 0, Ex+Esi/2, height);
    line(0, Ey-Esi/2, width, Ey-Esi/2);
    line(0, Ey+Esi/2, width, Ey+Esi/2);


    if ((xpos+si/2 == Ex-Esi/2) && (ypos >= Ey-Esi/2) && (ypos <= Ey+Esi/2)) {        
      xdir = -xdir;
      xspeed = xspeed +0.2;
    }
  }

  if (nb == hightB) {                                                                              //hight score BLUE

    background(255);
    rectMode(CENTER);
    fill(0, 102, 204);
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


    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2, height/3, 500, 300);

    textAlign(CENTER, BOTTOM);
    fill(0);
    textSize(72);
    text("GAME OVER", width/2, height/3);

    textAlign(CENTER, TOP);
    fill(0, 102, 204);
    textFont(font, 72);
    text("BLUE WIN", width/2, height/3);

    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2, height*3/5, 500, 100);

    textAlign(CENTER, CENTER);
    fill(random(200, 233), random(0, 102), 0);
    textSize(60);
    text("SPACEBER FOR RESTART", width/2, height*3/5);

    fileBounce.stop();
    fileStart.stop();
  } else if (nr == hightR) {                                                                        // hight score RED

    background(255);
    rectMode(CENTER);
    fill(233, 0, 0);
    rect(wt, ht, sit, sit);

    line(wt-sit/2, 0, wt-sit/2, height);
    line(wt+sit/2, 0, wt+sit/2, height);
    line(0, ht+sit/2, width, ht+sit/2);
    line(0, ht-sit/2, width, ht-sit/2);


    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2, height/3, 500, 300);

    textAlign(CENTER, BOTTOM);
    fill(0);
    textSize(72);
    text("GAME OVER", width/2, height/3);

    textAlign(CENTER, TOP);
    fill(233, 0, 0);
    textFont(font, 72);
    text("RED WIN", width/2, height/3);

    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2, height*3/5, 500, 100);

    textAlign(CENTER, CENTER);
    fill(0, random(0, 102), random(0, 204));
    textSize(60);
    text("SPACEBER FOR RESTART", width/2, height*3/5);

    fileBounce.stop();
    fileStart.stop();
  }
}

//for Player1
void keyPressed() {
  if (key == 'w') {
    if (y-100 <=0) {
    } else { 
      y = y - speed;
    }
  }
  if (key == 's') {
    if (y >=(height - padX1-50)) {
    } else {
      y = y + speed;
    }
  }

  if (keyCode == UP) {
    if (padY-100 <= 0) {
    } else {
      padY = padY - speed;
    }
  }
  if (keyCode == DOWN) {
    if (padY+100 >= height) {
    } else {
      padY = padY + speed;
    }
  }

  if (key == ' ') {
    setup(); 
    nr = nr*0;        //reset score
    nb = nb*0;
  }
  
  if (key == 'p') {
    newStart();
  }
}
