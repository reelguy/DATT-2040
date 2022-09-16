//click to roll Dice

//how many collumns and rows in my grid
int cols = 10;
int rows = 10;

//variables to hold stepsize (spacing in the grid)
int stepx, stepy, stepx2, stepy2;

//setup the size of my canvas
void setup() {
  size(500, 500);

  //value of stepsizes
  stepx = (width / cols);
  stepy = (height / rows);
  
  stepx2 = (width / cols / 2);
  stepy2 = (height /cols / 2);

  //set the fill color to 0
  fill(0,0,0);
}

//drawing loop -- keeps the sketch running in realtime

//sketch now quickly renders at 60 fps! (looks cool so i did it) 
void draw() {
  diceroll();
  
}

//press mouse to save a screenshot!
void mousePressed() {
  save("out.png");
}

//variables for column and row position
int col = -1;
int row = 0;

//diceroll function
void diceroll() {

  //each time we call our function col will add 1 to itself
  col++; 

  //if col is bigger than the the number of cols in our grid we return to 0
  //we add 1 to our row position value
  if (col >= cols) {
    col = 0;
    row++;
  }

  //a variable to hold our dice roll -- 
  //we create a random operation to generate random values between 0 - 3

  int dice = int(random(8));
  println(dice);


  //variables for our x and y positions
  float x = col*stepx;
  float y = row*stepy;

  //variable for our linesize
  int linesize = stepx;
  int linesize2 = stepx2;

  //draw an ellipse 5*5 pixels wide at each xy coordinate.   
  ellipse(x, y, 5, 5);

  //we use switch as a more convenient if else structure
  //we feed switch a variable, in this case our dice variables.
  //if the dice rolls a 0 we select "case 0", if it rolls a 1 "case 1" etc...
  //rolls generate simple line drawings -- up, down, left, right
  switch(dice) {
  case 0: 
    stroke(255, 8, 37);
    line(x, y, x+linesize, y);
    break;
  case 1: 
    stroke(8, 216, 255);
    line(x, y, x, y+linesize);
    break;
  case 2: 
    stroke(255, 8, 227);
    line(x, y, x-linesize, y);
    break;
  case 3: 
    stroke(247, 223, 0);
    line(x, y, x, y-linesize);
    break;
    
   // my new RNG options
  case 4: 
    strokeWeight(2);
    stroke(48, 128, 111);
    line(x, y, x+linesize, y);
    break;
  case 5: 
    strokeWeight(2);
    stroke(125, 87, 12);
    line(x, y, x, y+linesize);
    break;
  case 6: 
    strokeWeight(2);
    line(x, y, x-linesize, y);
    break;
  case 7: 
    strokeWeight(2);
    stroke(255,255,255);
    line(x, y, x, y-linesize);
    break;
  }
}
