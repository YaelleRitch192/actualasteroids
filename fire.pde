class fire extends gameobject {
  int t;
  PVector nudge;
  fire() {
    lives=1;
    size=int(random(5, 15));
    t=int (random(220, 255));
    location=myship.location.copy();
    velocity=myship.direction.copy(); 
    nudge =  myship.direction.copy(); 
    nudge.rotate(PI);
    nudge.setMag(25);
    location.add(nudge);
    velocity=myship.direction.copy(); 
    velocity.rotate(PI+random(-0.5, 1.5));
    velocity.setMag(5);
  }
  void show() {
    noStroke();
    fill(0, random(10, 30), random(80, 255), t);
    square(location.x, location.y, size);
  }

  void act() {
    super.act();
    t=t-20;
    if (t<=0)lives=0;
  }
}
