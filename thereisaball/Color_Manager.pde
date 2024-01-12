
class ColorManager{
  
    ColorManager() {
        colorList = new ArrayList<Integer>();
        colorList.add(color(95, 15, 64));
        colorList.add(color(154, 3, 30)); 
        colorList.add(color(251, 139, 36)); 
        colorList.add(color(227, 100, 20)); 
        colorList.add(color(15, 76, 92)); 
        colorList.add(color(230, 127, 152)); 
    }
    
   color getRandomColor(){
     
     color alteredColor = color(colorList.get((int)random(colorList.size())));
     
     int min = -20;
     int max = 20;
  
     int rnd = (int)random(min , max);
     
     float r = red(alteredColor) + rnd;
     float g = green(alteredColor) + rnd;
     float b = blue(alteredColor) + rnd;
     
     alteredColor = color(r, g, b);
     
     return alteredColor;
   }

    ArrayList<Integer> colorList;

};
