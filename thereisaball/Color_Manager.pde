
class ColorManager{
  
    ColorManager() {
        colorList = new ArrayList<Integer>();
        colorList.add(color(95, 15, 64)); // balle 0 dans la liste
        colorList.add(color(154, 3, 30)); // balle 1 dans la liste
        colorList.add(color(251, 139, 36)); 
        colorList.add(color(227, 100, 20)); 
        colorList.add(color(15, 76, 92)); 
        colorList.add(color(230, 127, 152)); 
    }
    
   color getRandomColor(){
     return colorList.get((int)random(colorList.size()));
   }

    ArrayList<Integer> colorList;

};
