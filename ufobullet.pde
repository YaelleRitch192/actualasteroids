class ufobullet extends gameobject {

  int timer;


  ufobullet() {
    timer=300;
    lives=1;
    location=new PVector(myufo.location.x, myufo.location.y);
    velocity = new PVector(myship.location.x - myufo.location.x, myship.location.y - myufo.location.y);
    velocity.setMag(2);
    size=10;
  }


  void show() {
    stroke(255);
    noFill();
    ellipse(location.x, location.y, size, size);
  }

  void act() {

    if (healthtimer>healththreshold && dist(location.x, location.y, myship.location.x, myship.location.y)<= 12) {
      health=health-1;
      healthtimer=0;
      lives=0;
    }

    location.add(velocity);
    timer--;
    if (timer==0) {
      lives=0;
    }
    if (location.x<0 || location.y>width ||location.y<0||location.y>height) lives=0;
  }
}
