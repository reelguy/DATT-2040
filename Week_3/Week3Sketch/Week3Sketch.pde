// week 3 assignment, using e6 randomuniform as template

//https://stackoverflow.com/questions/5837572/generate-a-random-point-within-a-circle-uniformly

size(600, 600);
strokeWeight(2);
int rad = 250;
for (int i = 0; i < 4000; i++) {
  float r = rad*sqrt(random(1));
  float theta = random(1) * 2 * PI;

  float x = width/2+r*cos(theta);
  float y = height/2+r*sin(theta);
  
  
  // red if lower right
  if ((x > width/2) && (y > height/2)) { 
    stroke(255, 0, 0);
    
  }
  // yellow if lower left
  if ((x < width/2) && (y > height/2)) { 
    stroke(255, 255, 0);
    
  }
  // magenta if upper left
  if ((x < width/2) && (y < height/2)) { 
    stroke(255, 0, 255);
    
  }
  // blue if upper right
  if ((x > width/2) && (y < height/2)) { 
    stroke(0, 255, 255);
    
  }
  // if in a range of 100 in any cardinal direction of the center of the screen, green
  if ((x >= (width/2 - 100) && x <= (width/2 + 100)) && (y >= (height/2 - 100) && y <= (height/2 + 100))) { 
    stroke(0, 255, 0);
    
  } 
  
  point(x, y);
  //reseting to black
  stroke(0, 0, 0);
}
