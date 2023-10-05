Dice man;
int numOfPips = 0;
//initialize numOfPips & make instance of Dice called man

void setup(){
size(500,500);
background(10,220,180);
noLoop();
//setup
}

void draw(){
  background(10,220,180);
  for(int y = 50; y < 350; y+= 50){
  for(int x = 50; x < 450; x+= 50){
   man = new Dice ();
   man.dice(x,y);
   //for loop to draw many dice by making man = new dice
   //a background is drawn to overlap the counter
  } 
} 
 
  textSize(25);
  text("Amount: " + numOfPips, 150,400);
  noLoop();
  //text to display amount of pips
  
}
void mousePressed(){
  redraw();
  numOfPips=0;
 // background(10,220,180);
  //reset when mouse is pressed
}




public class Dice {
  //what's in a class?
  //member variables
  //constructor
  //member functions
  
  void dice(int x, int y){
  fill(255,255,255);
  rect(x, y, 50, 50, 15);
  int randomNum = (int)(Math.random()*6)+1;
  fill(0);
  if (randomNum == 6){
  ellipse ( x +12.5 , y + 27.5, 10, 10); 
  ellipse (x + 12.5, y + 15, 10, 10);
  ellipse (x + 35.5 , y + 27.5, 10, 10);
  ellipse (x + 35.5 , y + 15, 10, 10);
  ellipse (x +12.5 , y + 40,10,10);
  ellipse (x +35.5 , y + 40 ,10, 10);
  numOfPips += 6;
  // 6 pip dice 
  }
    
  else if (randomNum == 5){ 
    ellipse ( x +12.5 , y + 35, 10, 10); 
    ellipse (x + 12.5, y + 15, 10, 10);
    ellipse (x + 35.5 , y + 35, 10, 10);
    ellipse (x + 35.5 , y + 15, 10, 10);
    ellipse (x + 24, y +24, 10, 10); 
    numOfPips += 5;
    //5 pip dice
    
  }
    
  else if (randomNum == 4){
    
    ellipse ( x +12.5 , y + 35, 10, 10); 
    ellipse (x + 12.5, y + 15, 10, 10);
    ellipse (x + 35.5 , y + 35, 10, 10);
    ellipse (x + 35.5 , y + 15, 10, 10); 
    numOfPips += 4;
     //4 die pip
  }
  
  else if (randomNum == 3){
    
    ellipse (x + 37.5 , y + 15 , 10, 10);
    ellipse ( x +12.5 , y + 35, 10, 10);
    ellipse (x + 25.5, y + 24.5, 10 ,10); 
    numOfPips += 3;
    // three die pip
  }
  
  else if (randomNum == 2){
    
      ellipse (x + 37.5 , y + 15 , 10, 10);
      ellipse ( x +12.5 , y + 35, 10, 10); 
      numOfPips += 2;
      //two die pip
  }
  else {
  
    ellipse (x +25 , y + 25 , 10, 10);
    numOfPips += 1;
    // one die pip
  }
}
    //my constructor has all of the stuff needed for the program
    //random dice generator function using Math.random and dice spawner
    //also adds onto numofpips, which stores how many pips there are on the screen
  }
  
  
  
