void Ball(){
  //ball
  rectMode(CENTER);
  fill(255, 223, 0);



  xpos = xpos + ( xspeed * xdir );
  ypos = ypos + ( yspeed * ydir );

  rect(xpos, ypos, si, si);


  line(xpos-si/2, 0, xpos-si/2, height);                  //line Left
  line(xpos+si/2, 0, xpos+si/2, height);                  //line Right
  line(65, ypos-si/2, 1855, ypos-si/2);                   //line Top
  line(65, ypos+si/2, 1855, ypos+si/2);                   //line Bottom

}
