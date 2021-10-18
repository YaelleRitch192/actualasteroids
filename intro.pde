void intro() {
  background(0);
  healthtimer=0;
  healththreshold=170;
  teleporttimer=200;
  teleportthreshold=200;
  ufotimer=0;
  blue=-100;
  lives=1;
  asteroidsnum=0;


  myship.velocity = new PVector(0, 0);
  myship.location.x=width/2;
  myship.location.y=height/2;
  myship.direction = new PVector (0, -0.1);

  image(gif[framenum], width/2, height/2, width, height);
  framenum=framenum+1;
  if (framenum==frames) framenum=0;

  textAlign(CENTER);
  fill(255);
  textSize(100);
  text("Asteroids", width/2, 200);
  text("start", width/2, 400);
  health=3;
}

void introclicks() {
  mode=game;
}
