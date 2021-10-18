
class ufo extends gameobject {
  PVector direction; 
  int r;
  int size;

  ufo() {
    location=new PVector(width/2, height/2);
    lives=1;
    size=30;
    r=int(random(0, 3));
    if (r==0) {
      location.x=random(0, 800);
      location.y=height;
      velocity = new PVector(0, -1);
    }
    if (r==1) {
      location.x=random(0, 800);
      location.y=0;
      velocity = new PVector(0, 1);
    }
    if (r==2) {
      location.x=width;
      location.y=random(0, 600);
      velocity = new PVector(-1, 0);
    }
    if (r==3) {
      location.x=0;
      location.y=random(0, 600);
      velocity = new PVector(1, 0);
    }
  }
  void show() {
    fill(0, 255, 0);
    ellipse(location.x, location.y, size, size);
  }
  void act() {
    location.add(velocity);

    super.act();
    timer++;
    if (timer>120) timer=0;
    if (timer== 30) myufobullets.add(new ufobullet());
    if (location.x>width||location.x<0) {
      lives=0;
    }
    if (location.y>height||location.y<0) {
      lives=0;
    }
    int i=0;
    while (i<myobjects.size()) {
      gameobject myobj = myobjects.get(i);
      if (myobj instanceof bullet) {
        if (dist(location.x, location.y, myobj.location.x, myobj.location.y)<=size/2+myobj.size) {
          myobj.lives =0;
          lives=0;
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
        }
      }
      i++;
    }
  }
}
