PVector greenBall;

color green = #77E369;
color purple = #C669E3;
color orange = #E3A669;

float angle = 0;

float x1, x2, y1, y2;
float angle1, angle2;
float scalar = 70;

void setup() {
  size(1000, 1000);
  
  greenBall = new PVector ();
  
  noStroke();
}

void draw() {
  background(0);

  float ang1 = radians(angle1);
  float ang2 = radians(angle2);

  x1 = width/9.5 + (scalar * cos(ang1));
  x2 = width/9.5 + (scalar * cos(ang2));
  
  y1 = height/9.5 + (scalar * sin(ang1));
  y2 = height/9.5 + (scalar * sin(ang2));
  
  fill(255);


  fill(0, 102, 153);//blue
  ellipse(x1, height*0.5 - 120, scalar, scalar);
  ellipse(x2, height*0.5 + 120, scalar, scalar);
  
  fill(100, 100, 100);//grey
  ellipse(x1, height*0.25 - 120, scalar, scalar);
  ellipse(x2, height*0.25 + 620, scalar, scalar);
  
  
  
  fill(255, 204, 0);//yellow
  ellipse(width*0.5 - 120, y1, scalar, scalar);
  ellipse(width*0.5 + 120, y2, scalar, scalar);
  
  fill (100,100,100); //grey
  ellipse(width*0.25 - 120, y1, scalar, scalar);
  ellipse(width*0.25 + 620, y2, scalar, scalar);
  
  angle1 += 2;
  angle2 += 2;
  
  float angleStep = TAU / 100.0;
  float radius = 256;
  translate(width/2,height/2);
  
  greenBall.x = cos(angle) * radius;
  greenBall.y = cos(angle) * radius;
  
  angle += angleStep;
  
  drawBall(greenBall, green, 64);

}

void drawBall(PVector location, color ballColor, float ballSize){
  fill (ballColor);
 circle (location.x, location.y, ballSize);
 return;
 
  
}
