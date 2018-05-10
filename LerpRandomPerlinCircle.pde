float x;
float y; 

float xRandom;
float yRandom;

float xNoise = 0; 
float yNoise;

void setup () {
  
  size(1000,1000); 

} 

void draw () {
  
 background(0); 
 
 //ellipse(width/2,height/2,50,50); 

 
 // Now let's lerp! the lerp() function calculates a number between two numbers at a specific increment. 
 //The last parameter is the amount to interpolate between the two values, where 0.0 is equal
 //to the first point, 0.1 is very near the first point, and .05 is half way between.

  fill(255); 
  stroke(255); 
  
 //x = lerp(x, mouseX, 0.05); 
 y = lerp(y, mouseY, 0.05);
  
 // ellipse(mouseX, mouseY, 50,50); 
 // ellipse(x,y,50,50);
 
 //xRandom = random(1,1000); 
 //ellipse(xRandom, height/2, 50,50); 
 
 x = map(noise(xNoise), 0, 1, 0, width); 
 xNoise = .01+xNoise;
  //xRandom = random(1,1000); 
  
 ellipse(x, height/2, 50,50); 
 
} 
