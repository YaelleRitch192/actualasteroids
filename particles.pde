class particles extends gameobject {
  int t;
  PVector direction;
  int i;


  particles(float x, float y) {
    lives=1;
    size=10;
    t=255;
    location=new PVector(x, y);
    velocity=new PVector (int(random(1, 5)), int(random(1, 5)));
    velocity.rotate(radians(random(0, 360)));
    velocity.setMag(5);
  }
  void show() {
    noStroke();
    fill(0, random(80, 255), random(10, 30), t);
    square(location.x, location.y, size);
  }

  void act() {
    super.act();
    t=t-20;
    if (t<=0)lives=0;
  }
}
