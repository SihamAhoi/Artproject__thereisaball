void setup () {
  size (750, 750);
  stroke(0,0,255);
  background(0);
}
int centreCercleX = 250;
int centreCercleY = 250;
int largeurCercle = 250;
int hauteurCercle = 250;
int rouge = 1;
int vert = 1;
int bleu = 255;

void draw() {
  ellipse(mouseX, mouseY, 250, 250);
  stroke(rouge, vert, bleu);
  fill(0);
  rouge++;
  
}
