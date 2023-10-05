PVector linearMotion;


PImage background;

void setup() {
  size(474, 295);
  background = loadImage("Desert.JPG");
  
  
  noStroke();
  textAlign (RIGHT, RIGHT);
  frameRate(50);
  
  linearMotion = new PVector (25,25);
  
}

void draw() {
  image(background,0,0);
  //fading to see the pic
  fill (255, 25);
  rect(0,0,width, height);
  
  int ballSize = 25;
  
  fill(#EAF557);
  circle (linearMotion.x, linearMotion.y, ballSize);
  
  //x increasing = it moves to the right
  linearMotion.x +=1;
  linearMotion.x +=0;
  println(linearMotion);
  text("this is not a circle", linearMotion.x - ballSize, linearMotion.y);
  
}
