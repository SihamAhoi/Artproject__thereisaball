

Ball_Manager ball_Manager = new Ball_Manager();


void setup () {
  size (1500, 1500);
  background(0); 
  frameRate(25);
}


void draw() {
  background(0);
  ball_Manager.process();
}

void mousePressed() {
  
  // println("pressed");
  
  ball_Manager.createNewBall();
  
}


// distance
// int prevX = 0;
// int prevY = 0;
void mouseDragged() {
  
  //float dist = dist(mouseX, mouseY, prevX, prevY);
  
  //if(dist > 50) {

    ball_Manager.createNewBall();
    //prevX = mouseX;
    //prevY = mouseY;
 // } 
}


/*

// time
int lastTime = 0;

void mouseDragged() {
  
  int curTime = millis();
  
  if(curTime - lastTime > 25) {

    ball_Manager.createNewBall();
    lastTime = curTime;
  } 
}
*/
