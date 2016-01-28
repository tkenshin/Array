class Ball {
  float x, y;
  float vx, vy;
  color c;
}

ArrayList<Ball> balls;

void setup() {
  size(500, 500);
  background(random(256));
  balls = new ArrayList<Ball>();
  Ball ball;

  for (int i = 0; i < 1000; i++) {
    ball = new Ball();
    ball.x = random(width); 
    ball.y = random(height);
    ball.vx = random(-1, 1);
    ball.vy = random(-1, 1);
    balls.add(ball);
  }

  /*
   ball = new Ball();
   ball.x = 100; ball.y = 100;
   balls.add(ball);
   
   ball = new Ball();
   ball.x = 200; ball.y = 200;
   balls.add(ball);
   */
}

void draw() {
  int n = balls.size();
  for (int i = 0; i < n; i++) {
    Ball ball = balls.get(i);
    ball.c = color(random(256), random(256), random(256));
    fill(255, 255, 255, random(256));
    stroke(255, 25, 25, random(256));
    ellipse(ball.x, ball.y, 20, 20);
    ball.x += ball.vx;
    ball.y += ball.vy;
  }
}