//NOMBRE:Celena Montenegro//
//TEMA:obra de arte electronico//

import ddf.minim.*;
PImage img;

void setup(){

img = loadImage("pez-betta-purpura.jpg.jpg");
size(640,480);
background(0);
}

void draw(){
    
  float pointRandom = random(1,15);
  float alphaRandom = random(1,900);
  
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y * img.width;
  
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  fill(r, g, b, alphaRandom);
  ellipse(x,y,pointRandom,pointRandom);
}
