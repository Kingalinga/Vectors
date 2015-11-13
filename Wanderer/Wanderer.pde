//declare variables
float x, y, velX, velY, diam;
PVector wandr;
PVector loc;

void setup() {
  //set size of canvas
  size(800, 600);
loc= new PVector(width/2, height/2);
  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);
wandr = PVector.random2D();
wandr.mult(5);
  //draw ball
  ellipse(loc.x, loc.y, diam, diam);
loc.add(wandr);
  //add velocity to position
 // x += velX;
 // y += velY;

  //wrap the ball's position
  if (loc.x>= width) {
    loc.x = 0;     
  } else if (loc.x <= 0) {
    loc.x = width ;
  }
  if (loc.y  >= height) {
    loc.y = 0;
  } else if (loc.y  <= 0) {
    loc.y = height;
  }
}