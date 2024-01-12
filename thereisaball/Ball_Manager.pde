

class Ball_Manager{
  
    Ball_Manager() {
        balls = new ArrayList<Ball>();
       
        colorManager = new ColorManager ();
    }

    void createNewBall() {
        balls.add(new Ball(mouseX, mouseY, (int)random(5, 500), colorManager.getRandomColor())); 
        // println("nouvelle balle, voici la taille de la liste : ", balls.size());
    }

    void process() {

        for (int i = 0; i < balls.size(); i++) {

            Ball b = balls.get(i);

            b.draw();

            b.diametre = b.diametre - 2;

            b.positionY = b.positionY + (250 - b.diametre) / 5;
           // b.positionY = b.positionY + (500 - b.diametre) / 10;
            
            if(b.diametre <= 0 || b.positionY > (height + b.diametre/2)) {
                balls.remove(i);
            //   println("oh! on a enlevé une balle tiens, combien ? ca fait : ", balls.size());
            }

        }

    }

    ArrayList<Ball> balls;
    ColorManager colorManager; 

};
