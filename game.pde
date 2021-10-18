void game() {
  image(space, width/2, height/2, 800, 600);
  healthtimer++;
  strokeWeight(2);
  textSize(30);
  fill(0, 255, 0, 100);
  text("Health:"+health, 70, 50);
  if (health<=0) {
    mode=gameover;
  }

  if (healthtimer<healththreshold) {
    healthtimer++;
  } 

  teleporttimer++;
  if (teleporttimer>201) { 
    teleporttimer=201;
    fill(0, 255, 0);
    rect(100, 100, 200, 50);
  } else {
    blue++;
    fill(200, 0, 0);
    rect(blue, 100, 200, 50);
    if (blue>101) blue=-100;
  }
  fill(255);
  text("teleport", 100, 110);

  if (asteroidsnum>20)mode=gameover;

  int i=0;
  while (i<myobjects.size()) {
    gameobject myobj = myobjects.get(i);
    myobj.show();
    myobj.act();
    if (myobj.lives==0) {
      myobjects.remove(i);
    } else {
      i++;
    }

    int ui=0;
    while (ui<myufobullets.size()) {
      ufobullet ub =myufobullets.get(ui);
      ub.show();
      ub.act();
      if (ub.lives==0) {
        myufobullets.remove(ui);
      } else {
        ui++;
      }
    }
  }
  ufotimer++;  
  if (ufotimer>500) {
    myufo=new ufo();
    myobjects.add(myufo);
    ufotimer=0;
  }


  if (wkey==true) {
    myobjects.add(new fire());
    myobjects.add(new fire());
    myobjects.add(new fire());
    myobjects.add(new fire());
  }


  //pause button
  rectMode(CORNER);
  fill(255, 255, 255, 50);
  strokeWeight(4);
  if (dist(400, 100, mouseX, mouseY)<35.5) {
    stroke(23, 11, 209, 100);
  } else {
    stroke(255, 255, 255, 50);
  }
  circle(400, 100, 75);
  strokeWeight(0);
  fill(255, 255, 255, 50);
  rect(380, 80, 12, 40);
  rect(407, 80, 12, 40);
  rectMode(CENTER);
}

void gameclicks() {
  if (dist(400, 100, mouseX, mouseY)<37.5) {
    mode=pause;
  }
}
