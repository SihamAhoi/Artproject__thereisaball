

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

void mouseDragged() {
  
 // println("dragged");
  
  ball_Manager.createNewBall();
  
}
