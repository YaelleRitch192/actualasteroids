class asteroid extends gameobject {
  float loc1;
  asteroid() {
    lives=1;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI));
    size=100;
  }

  asteroid(int s, float x, float y) {
    lives=1;
    location=new PVector(x, y);
    velocity=new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI));
    size = s;
  }

  void show() {
    stroke(255);
    noFill();
    ellipse(location.x, location.y, size, size);
    textFont(aremat);
  }

  void act() {
    super.act();
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
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));
          myobjects.add(new particles(location.x, location.y));

          asteroidsnum++;
          if (size>49) {
            myobjects.add(new asteroid(size/2, location.x, location.y));
            myobjects.add(new asteroid(size/2, location.x, location.y));
          }
        }
      }
      i++;
    }

    if ( healthtimer>healththreshold && dist(location.x, location.y, myship.location.x, myship.location.y)<= size/2+7) {
      health=health-1;
      healthtimer=0;
    }

    if (teleporttimer>teleportthreshold) {
      if (tkey==true) {
        teleporttimer=0;
        myship.location.x=random(0, 800);
        myship.location.y=random(0, 600);
        myship.velocity = new PVector(0, 0);
        tkey=false;

        while (dist(location.x, location.y, myship.location.x, myship.location.y)<=200) {
          myship.location.x=random(0, 800);
          myship.location.y=random(0, 600);
          tkey=false;
        }
      }
    }
  }
}
