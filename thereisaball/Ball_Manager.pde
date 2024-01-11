

class Ball_Manager{
  
    Ball_Manager() {
        listBall = new ArrayList<Ball>();
        listBall.add(new Ball(300, 300, 350, color(20, 0, 235))); // balle 0 dans la liste
        listBall.add(new Ball(200, 200, 350, color(230, 127, 2))); // balle 1 dans la liste
        listBall.add(new Ball(200, 400, 350, color(30, 127, 2))); 
        listBall.add(new Ball(700, 500, 350, color(230, 27, 2))); 
        listBall.add(new Ball(600, 200, 350, color(230, 127, 152))); 
    }

    void createNewBall() {
        listBall.add(new Ball(mouseX, mouseY, (int)random(5, 500), color(random(255), random(255), random(255)))); 
        println("nouvelle balle, voici la taille de la liste : ", listBall.size());
    }

    void process() {

        for (int i = 0; i < listBall.size(); i++) {

            Ball b = listBall.get(i);

            b.draw();

            b.diametre = b.diametre - 2;

            b.positionY = b.positionY + (250 - b.diametre) / 5;
           // b.positionY = b.positionY + (500 - b.diametre) / 10;

            if(b.positionY > (height + b.diametre)) {
             listBall.remove(i);
             println("si tu sors tu disparais ; et tu disparais ou ? en :", b.positionY);
            }
            
            if(b.diametre <= 0) {
                listBall.remove(i);
                println("oh! on a enlevé une balle tiens, combien ? ca fait : ", listBall.size());
            }

        }

    }

    ArrayList<Ball> listBall;

};
