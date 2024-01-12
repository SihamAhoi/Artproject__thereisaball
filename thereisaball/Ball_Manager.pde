

class Ball_Manager{
  
    Ball_Manager() {
        balls = new ArrayList<Ball>();
       
        colorManager = new ColorManager ();
    }

    void createNewBall() {
        balls.add(new Ball(mouseX, mouseY, (int)random(5, maxSize), colorManager.getRandomColor())); 
        // println("nouvelle balle, voici la taille de la liste : ", balls.size());
    }

    void process() {

        for (int i = 0; i < balls.size(); i++) {

            Ball b = balls.get(i);
            
            if(b.isVisible()) {
              b.draw();
            }

            b.diametre = b.diametre - 2;

            b.positionY = b.positionY + (maxSize / 2 - b.diametre);
           // b.positionY = b.positionY + (500 - b.diametre) / 10;
            
            if(b.diametre <= 0 || b.positionY > (height + b.diametre/2)) {
                balls.remove(i);
            //   println("oh! on a enlevé une balle tiens, combien ? ca fait : ", balls.size());
            }

        }

    }
    int maxSize = 100;
    ArrayList<Ball> balls;
    ColorManager colorManager; 

};
