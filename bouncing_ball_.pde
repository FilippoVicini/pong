// VARIABLES 

// Circle 
float xPos; // x-position of circle
float yPos; // y-position of circle 
int radius = 50; // radius of circle 

// Velocity
float vx; // speed in x-direction
float vy; // speed in y-direction


//Rectangle 
int xRect = 10; // Left rectangle x
int yRect = 10; // left rectangle y
int xRect2 = 380;// right rectangle x 
int yRect2 = 10; // right rectangle y


// Setup method 
void setup()
{

  size(400,300);
  fill(255,177,8);
  textSize(48);
  xPos = width/2;  // Initialise xPos to centre of sketch
  yPos = height/2; 
  vx = -2; // Set speed in x-direction to -2 (moving left)
  vy = -1; // set speed of y-direction to -1 
}


// draw method 
 
void draw()
{

  background(64); 
  xPos = xPos + vx;
  yPos = yPos + vy;// Change x-position on each redraw
  circle(xPos, yPos, radius);
  fill(255,0,0);
  rect(xRect,yRect,10,80);
  rect(xRect2,yRect2,10,80);
  


  if (xPos <= 0) {
    fill(255,0,0);
    circle(xPos, yPos, radius);
    vx= 0;
    vy = 0;
    text("You Lost", width/2, height/2 );
  } else if (xPos >= 400){
    fill(0,255,0);
    circle(xPos, yPos, radius);
    vx= 0;
    vy = 0;
    text("You Lost", width/2, height/2 );
  } else if (yPos <= 0) {
    fill(0,0,255);
    circle(xPos, yPos, radius);
    yPos = 0 ;
    vy = 1;
  } else if (yPos >= 300) {
    fill(0,255,0);
    circle(xPos, yPos, radius);
    yPos = 300 ;
    vy = -1;
  } else if (xPos < xRect && yPos> yRect && yPos<yRect+80) {
     fill(255,0,0);
    circle(xPos, yPos, radius);
    xPos =  xRect;
    vx= +2;
    text("si cazzo", 100,100);
  }else if (xPos > xRect2 && yPos> yRect2 && yPos<yRect2+80) {
     fill(255,0,0);
    circle(xPos, yPos, radius);
    xPos =  xRect2;
    vx= -2;
    text("si cazzo", 100,100);
  }
}



void keyPressed() {
  if (key == 'q' || key == 'Q') {
    yRect = yRect -7;
  } else if (key == 'a' || key == 'A') {
    yRect = yRect +7;
  } 
  
    if (key == 'p' || key == 'P') {
    yRect2 = yRect2 -7;
  } else if (key == 'l' || key == 'L') {
    yRect2 = yRect2 +7;
  } 
  
}
