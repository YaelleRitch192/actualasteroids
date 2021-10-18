//yaelle ritch
//1-3



boolean wkey, skey, akey, dkey, spacekey, tkey;
ship myship;
ufo myufo;
ufobullet myufobullet;
asteroid myasteroid;
int mode;
final int intro =1;
final int game =2;
final int pause =3;
final int gameover =4;
ArrayList<gameobject> myobjects;
ArrayList<ufobullet> myufobullets;
PFont aremat;
PFont moon;
PImage[]gif;
PImage[]gif2;
int frames;
int frames2;
int framesi;
int framenum;
int framenum2;
int health;
int asteroidsnum;
String leadingzeroes = "0";
int timer;
int lives;
int ufotimer;
int healthtimer;
int healththreshold;
int teleporttimer;
int teleportthreshold;
int blue;
PImage space;


void setup() {
  size(800, 600);
  mode=intro;
  imageMode(CENTER);
  rectMode(CENTER);
  myship=new ship();
  myufo=new ufo();
  myufobullet=new ufobullet();
  myobjects= new ArrayList<gameobject>();
  myobjects.add(myship);
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
  myobjects.add(myufo);
  myufobullets= new ArrayList<ufobullet>();
  aremat=createFont("aremat font.ttf", 100);
  moon = createFont("Space Shop.ttf", 100);
  space= loadImage("download.jpg");
  textFont(aremat);
  frames=164;
  gif=new PImage[frames];
  int index = 0;
  while (index<frames) {
    if (index<10) {
      leadingzeroes="00";
    } else if (index<100) {
      leadingzeroes="0";
    } else {
      leadingzeroes="";
    }
    gif[index] = loadImage ("frame_"+leadingzeroes+index+"_delay-0.03s.gif");
    index=index+1;
  }

  frames2=125;
  gif2=new PImage[frames2];
  int index2 = 0;
  while (index2<frames2) {
    if (index2<10) {
      leadingzeroes="00";
    } else if (index2<100) {
      leadingzeroes="0";
    } else {
      leadingzeroes="";
    }
    gif2[index2] = loadImage ("frame_"+leadingzeroes+index2+"_delay-0.04s.gif");
    index2=index2+1;
  }
}

void draw() {
  background(0);


  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  }
}
