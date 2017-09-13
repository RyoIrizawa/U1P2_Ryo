
PImage alien;
PImage rocket;
PImage brocket;
PImage space;
PImage alien1;
PImage alien2;
PImage alien3;
PImage alien4;
PImage alien5;
PImage attack;
PImage attack1;
PImage attack2;
PImage attack3;
PImage attack4;
PImage attack5;
PImage blow;
PImage word;
PImage bossroom;
PImage boss;
PImage men;
PImage earth;
PImage alert;


int b=0;
int c=800;
int d=0;
int s=0;
int w=0;
int q=0;
int o=0;
int x=0;
int y=0;
int x1=0;
int y2=0;
int y1=0;
int a=0;
int z=0;


float[]Xs=new float[50+d];
float[]Ys=new float[50+d];
float[]X1s=new float[50+d];
float[]Y1s=new float[50+d];
float[]X2s=new float[50+d];
float[]Y2s=new float[50+d];
float[]X3s=new float[50+d];
float[]Y3s=new float[50+d];
float[]X4s=new float[50+d];
float[]Y4s=new float[50+d];
float[]X5s=new float[50+d];
float[]Y5s=new float[50+d];
float[]X6s=new float[100+d];
float[]Y6s=new float[100];

void setup()
{
  LoadImages();
  arrays();
  fill(255, 18, 22);
  size(800, 800);
}

void draw()
{
  ellipse(390, 750+y1, 1, 1);
  y1=y1-100;
  if (750+y1<300)
  {
    y1=0;
  }
  ellipse(390, 850+y1, 1, 1);
  y1=y1-100;
  if (850+y1<300)
  {
    y1=0;
  }
  background(50);
  image(space, 0, 0, 800, 800);
  image(brocket, 400+x, 720+y, 40, 60);
  for (int i=0; i<40; i++)
  {
    image(alien, Xs[i], Ys[i]++, 40, 40);
    if (Ys[i]>700)
    {
      Ys[i]=0;
    }

    image(alien1, X1s[i], Y1s[i]++, 40, 40);
    if (Y1s[i]>700)
    {
      Y1s[i]=0;
    }
    image(alien2, X2s[i], Y2s[i]++, 40, 40);
    if (Y2s[i]>700)
    {
      Y2s[i]=0;
    }
    image(alien3, X3s[i], Y3s[i]++, 40, 40);
    if (Y3s[i]>700)
    {
      Y3s[i]=0;
    }
    image(alien4, X4s[i], Y4s[i]++, 40, 40);
    if (Y4s[i]>700)
    {
      Y4s[i]=0;
    }
    image(alien5, X5s[i], Y5s[i]++, 40, 40);
    if (Y5s[i]>700)
    {
      Y5s[i]=0;
    }

    image(attack, Xs[i], 2+a+Ys[i], 40, 40);
    if (2+a>0)
    {
      a=a+1;
      if (2+a>200)
      {
        a=0;
      }
    }
    image(attack1, X1s[i], 2+a+Y1s[i], 40, 40);
    if (2+a>0)
    {
      a=a+1;
      if (2+a>200)
      {
        a=0;
        Ys[i]=random(Ys[i]);
      }
    }
    image(attack2, X2s[i], 2+a+Y3s[i], 20, 30);
    if (2+a>0)
    {
      a=a+1;
      if (2+a>200)
      {
        a=0;
        Ys[i]=random(Ys[i]);
      }
    }

    image(blow, X6s[i], 2+a+Y6s[i], 50, 50);
    if (2+a>0)
    {
      a=a+1;
      if (2+a>200)
      {
        a=0;
      }
    }
  } 


  for (int y= 0; y<width; y=y+40)
  {
    image(rocket, y, 800-40, 40, 40);
  }

  image(word, 100+s, 200, 600, 400);

  //image(brocket,400+x,720+y,40,60);


  if (720+y<20)
  {
    image(alert, 0, 0, 800, 800);
    fill(255, 255, 255);
    PFont f= createFont("Georgina", 64);
    textFont(f);
    textSize(36);
    String b1="It seems like you are in a different dimension.";
    String b2= "Do not make any movements as we are trying";
    String b3="to figure out where you are now.";
    String b4="*click o to go to next slide";
    text(b1, 0+o, 100);
    text(b2, 0+o, 200);
    text(b3, 0+o, 300);
    text(b4, 0+o, 400);
    String c1="Soldi...r can yo..u he...ar m...e?";
    String c2= "There seems to be an connection error.";
    String c3="I'm goign to move you to their base before";
    String c4="they figure out about you.";
    String c5="Click o to get in alien base.";
    text(c1, 800+o, 100);
    text(c2, 800+o, 200);
    text(c3, 800+o, 300);
    text(c4, 800+o, 400);
    text(c5, 800+o, 500);

    fill(247, 2, 2);
    {
      image(bossroom, 1600+0+o, 0, 800, 800);
      image(men, 1600+375+o, 650, 90, 180);
      String a1="Solider: Sir, I do not see anything.";
      String a2="It seems to be true that the diamond";
      String a3="is a invisble monster.";
      String a4="Solider: What should I do sir?";
      text(a1, 1600+o, 100);
      text(a2, 1600+o, 180);
      text(a3, 1600+o, 260);
      text(a4, 1600+o, 340);
      String a5="Trust me and shoot the center of the place.";
      String a6="Solider: What if I fail the mission, sir?";
      String a7="Trust me solider, I would not let you die.";
      String a8="click o to move to next slide";
      text(a5, 1600+o, 420);
      text(a6, 1600+o, 500);
      text(a7, 1600+o, 580);
      text(a8, 1600+o, 660);
      image(bossroom, 2400+0+o, 0, 800, 800);
      image(men, 2400+375+o, 650, 90, 180);
      String a9="Click n and m to shoot";
      text(a9, 2400+o, 100);
    }
  }


  if (200+q<150)
  {
    image(earth, 0, 0, 800, 800);
    fill(95, 234, 135);
    PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(64);
    String a="Congatualtions!!";
    String b="You have saved Earth";
    text(a, 0, 100);
    text(b, 0, 200);
    //image(boss, 300+w, 200+q, 300, 300);
    w=800;
    y1=800;
    z=800;
  }
}
//try avoiding touching the aliens



void LoadImages()
{
  space=loadImage("space.jpg");
  rocket=loadImage("rocket.png");
  brocket=loadImage("brocket.png");
  alien=loadImage("Alien.space.gif");
  alien1=loadImage("1.png");
  alien2=loadImage("2.png");
  alien3=loadImage("3.png");
  alien4=loadImage("4.png");
  alien5=loadImage("5.png");
  attack=loadImage("lines.png");
  attack1=loadImage("laser.png");
  attack2=loadImage("blaster.png");
  attack3=loadImage("nuc.png");
  attack4=loadImage("missile.png");
  attack5=loadImage("bullet.png");
  blow=loadImage("blow.png");
  word=loadImage("s.png");
  bossroom=loadImage("bb.png");
  boss=loadImage("boss.png");
  men=loadImage("men.png");
  earth=loadImage("earth.jpg");
  alert=loadImage("alert.jpg");
}



void keyPressed()
{
  if (key=='j')
  {
    x=x-10;
  }
  if (key=='i')
  {
    y=y-50;
  }
  if (key=='l')
  {
    x=x+10;
  }
  if (key=='n')
  {
    image(attack1, 390+z, 650, 20, 40);
    image(attack1, 390+z, 600, 20, 40);
    image(attack1, 390+z, 550, 20, 40);
    image(boss, 300+w, 200+q, 300, 300);
    q=q-1;
    w=w-1;
    ellipse(400, 750+y1, 5, 30);
    ellipse(400, 800+y1, 5, 30);
  }
  if (key=='m')
  {
    image(attack1, 390+z, 500, 20, 40);
    image(attack1, 390+z, 400, 20, 40);
    image(attack1, 390+z, 450, 20, 40);
    image(boss, 300+w, 200+q, 300, 300);
    q=q-1;
    w=w+1;
    ellipse(400, 750+y1, 5, 30);
    ellipse(400, 800+y1, 5, 30);
  }

  if (key=='z')
  {
    s=s-800;
  }
  if (key=='o')
  {
    o=o-800;
  }
}
  void arrays()
{
 
  for (int i=0; i<50+d; i++)
  {
    Xs[i]=random(width);
    Ys[i]=random(height);
  }
  for (int i=0; i<50+d; i++)
  {
    X1s[i]=random(width);
    Y1s[i]=random(height);
  }
  for (int i=0; i<50+d; i++)
  {
    X2s[i]=random(width);
    Y2s[i]=random(height);
  }
  for (int i=0; i<50+d; i++)
  {
    X3s[i]=random(width);
    Y3s[i]=random(height);
  }
  for (int i=0; i<50+d; i++)
  {
    X4s[i]=random(width);
    Y4s[i]=random(height);
  }
  for (int i=0; i<50+d; i++)
  {
    X5s[i]=random(width);
    Y5s[i]=random(height);
  }
  for (int i=0; i<50+d; i++)
  {
    X6s[i]=random(width);
    Y6s[i]=random(height);
  } 
}