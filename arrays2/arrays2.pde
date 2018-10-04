// Code 1 FA_18
// Bryan Ma

// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.


  float [] pos = new float[1000];
  int x;

void setup() {
  size(600,600);
  for (int i = 0; i<100; i++) {
    pos[i] = map(i, 0, 100, 0, width);
  
}
}

void draw() {
  background(0,0,102);
  noFill();
  fill(224,224,224);
  stroke(0);
  rect(0,height/2, 600,45);
  for (int i = 0; i<100; i+=5) {
    fill(255,255,153);
  stroke(0);
    rect(pos[i], 305, 20,20);
    pos [i] += random (-2,2);
    strokeWeight(2);
    stroke(255, 255, 255);
    line(x,335,x+325,335);
    x = x + 1;
    if (x > width) {
      x = 0;
    }
      
  }
  
  
  
  }
