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
     int rayon = diametre/2 ;
     
     int top = positionY - rayon ;
     int bottom = positionY + rayon ;
     int right = positionX + rayon;
     int left = positionX - rayon;
     return top < height && bottom > 0 && left < width && right > 0;
     
  }
  
  int positionX;
  int positionY;
  int diametre;
  color maCouleur;
  
};
