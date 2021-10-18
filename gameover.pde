void gameover() {
  image(gif2[framenum2], width/2, height/2, width, height);
  framenum2=framenum2+1;
  if (framenum2==frames2) framenum2=0;

  fill(50, 50, 255);
  textSize(100);
  if (health<=0) {
    text("you lose", width/2, 500);
  } else {
    text("you win", width/2, 500);
  }
}

void gameoverclicks() {

  println(myobjects.size());
  int i=myobjects.size()-1;
  int end= 1;

  while (i>=end) {
    myobjects.remove(i);
    println("loop");
    println(myobjects.size());

    i--;
  }
  println(myobjects.size());
  myobjects.add(new asteroid(100, random(0, 800), random(0, 600)));
  myobjects.add(new asteroid(100, random(0, 800), random(0, 600)));
  myobjects.add(new asteroid(100, random(0, 800), random(0, 600)));
  println(myobjects.size());
  mode=intro;
}
