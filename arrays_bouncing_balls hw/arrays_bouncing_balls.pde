// Code 1 FA_18
// Bryan Ma

// bouncing ball array

// this sketch adapts the bouncing ball behavior to use arrays to create multiple balls. 
// there is an array for the x positions, y positions, x speed, and y speed.

// add an additional array to store different sizes of the balls. 
// make sure that the ellipse function call in draw() refers to these sizes so that each ball
//  displays its own size properly.


int num = 10;

float[] x = new float[num];
float[] y = new float[num];
float[] dx = new float[num];
float[] dy = new float[num];
float[] s = new float[num];

void setup() {
  size(800, 800);
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2;
    y[i] = height/2;
    dx[i] = random(-10, 10);
    dy[i] = random(-10, 10);
    s[i] = random(-40,40);
  }
}

void draw() {
  background(200);


  for (int i = 0; i < x.length; i++) {

    fill(20);
    ellipse(x[i], y[i], s[i], s[i]);
    x[i] += dx[i];
    y[i] += dy[i];

    if (x[i] > width-s[i]/2 || x[i] < s[i]/2) {
      dx[i] = -dx[i];
    }
    if (y[i] > height-s[i]/2 || y[i] < s[i]/2) {
      dy[i] = -dy[i];
    }
  }
}
