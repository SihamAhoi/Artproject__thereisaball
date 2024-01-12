//Ceci est un objet que je peux instancier dans "thereisaball" (ou ailleurs) et tout le monde est à sa place

class Ball {

  Ball(int inX, int inY, int indiametre, color inColor) {
    positionX = inX;
    positionY = inY;
    diametre = indiametre;
    maCouleur = inColor;
  }
  
  void draw() {
    fill(maCouleur);
    stroke(maCouleur);
    circle(positionX, positionY, diametre);
  }
  
  boolean isVisible() {
     int top = positionY - diametre / 2;
     int bottom = top + diametre;
     return top < height && bottom > 0;
  }
  
  int positionX;
  int positionY;
  int diametre;
  color maCouleur;
  
};
