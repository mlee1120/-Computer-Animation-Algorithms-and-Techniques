/** mass of a ball */
float mBall;

/** radius of a ball */
float rBall;

/** moment of inertia of a ball */
float I;

/** coefficient of rolling friction */
float uRolling;

/** coefficient of friction */
float uSliding;

/** rotation deceleration */
float alphaD;

/** coefficient of restitution among balls */
float eBall;

/** coefficient of restitution between a ball and the table */
float eTable;

/** is there any ball moving */
boolean move;

/** an array of Balls representing all balls */
Ball[] balls;

/** a variable used to count the frames to delay some algorithm */
int counter;

/** a variable used to delay the disappear of the cue after hitting the cue ball */
int hitDelay;

/** a variable used to prevent continuous collisions with the same cushion, which makes the ball move along the cushion */
int cushionDelay;

/** the cue */
Cue cue;

/**
 * This function is executed once at the beginning for setting up the window (canvas size) and projection
 * type, assigning some constant values, and also initializing some variables and datastructures.
 */
void setup() {

  // 9" table
  size(1140, 640, P3D);
  ortho();
  // kg
  mBall = 0.17;

  // inch
  rBall = 11.25;

  // kg * m^2
  I = 2/5 * mBall * 0.05715 * 0.05715;
  uRolling = 0.1;
  uSliding = 6;

  // rad/sec^2
  alphaD = 10;
  eBall = 1.0;
  eTable = 0.5;

  move = false;
  balls = new Ball[3];
  balls[0] = new Ball(820.0, 320.5, 0);
  balls[1] = new Ball(500.0, 200.0, 8);
  balls[2] = new Ball(350.0, 470.0, 15);

  cue = new Cue();

  counter = 0;
  hitDelay = 0;
  cushionDelay = 0;
}

/**
 * This function is executed repeatedly for animation.
 */
void draw() {
  // if the cue ball is not in the pocket
  if (!balls[0].pocket) {
    move = false;

    // check is there any ball moving
    for (int i = 0; i < balls.length; i++) {
      if (balls[i].velocity != 0) {
        move = true;
        break;
      }
    }

    // check collisions and pockets
    detectCollision();

    // if there is at least one ball in motion, perform translation and rotation (Euler's integration)
    if (move) transform();
    drawTable();
    drawBalls();
    if (move) hitDelay++;
    else hitDelay = 0;

    // delay the disappear of the cue after hitting the cue ball
    if (hitDelay <= 3) cue.drawCue();

    // impluse applied to the cue ball depends on how long you click your mouse
    if (mousePressed && cue.charge < 60 && !move) cue.charge++;
    if (!mousePressed && cue.charge != 0 && !move) {
      hit(100.0 * cue.charge / 60.0);
      cue.charge = 0;
    }
  }

  // prevent instant continuous cushion collisions
  if (cushionDelay != 0) counter++;
  if (counter == 6) {
    cushionDelay = 0;
    counter = 0;
  }
}

/**
 * This function checks and deals with collisions among balls or between balls and the cushions.
 * It also checks if there is any ball gets into a pocket and responses accordingly.
 */
void detectCollision() {
  float distance;

  // collisions among balls
  for (int i = 0; i < balls.length - 1; i++) {
    for (int j = i + 1; j < balls.length; j++) {
      // check collisions among balls
      if (!balls[i].pocket && !balls[j].pocket && (balls[i].velocity != 0 || balls[j].velocity != 0)) {
        distance = sqrt((balls[i].x - balls[j].x) * (balls[i].x - balls[j].x) + (balls[i].y - balls[j].y) * (balls[i].y - balls[j].y));
        if (distance <= 2 * rBall) collisionBall(i, j);
      }
    }
  }

  // check pockets
  for (int i = 0; i < balls.length; i++) {
    // check upper-left pocket
    if (balls[i].x <= 70 + sqrt(45 * 45 - rBall * rBall) && balls[i].y <= 70 + sqrt(45 * 45 - rBall * rBall) && sqrt((balls[i].x - 70) * (balls[i].x - 70) + (balls[i].y - 70) * (balls[i].y - 70)) <= 22.5) {
      balls[i].pocket = true;
      balls[i].velocity = 0.0;
      balls[i].directionX = 0.0;
      balls[i].directionY = 0.0;
    }
    // check lower-left pocket
    else if (balls[i].x <= 70 + sqrt(45 * 45 - rBall * rBall) && balls[i].y >= 570 - sqrt(45 * 45 - rBall * rBall) && sqrt((balls[i].x - 70) * (balls[i].x - 70) + (balls[i].y - 570) * (balls[i].y - 570)) <= 22.5) {
      balls[i].pocket = true;
      balls[i].velocity = 0.0;
      balls[i].directionX = 0.0;
      balls[i].directionY = 0.0;
    }
    // check upper-right pocket
    if (balls[i].x >= 1069 - sqrt(45 * 45 - rBall * rBall) && balls[i].y <= 70 + sqrt(45 * 45 - rBall * rBall) && sqrt((balls[i].x - 1069) * (balls[i].x - 1069) + (balls[i].y - 70) * (balls[i].y - 70)) <= 22.5) {
      balls[i].pocket = true;
      balls[i].velocity = 0.0;
      balls[i].directionX = 0.0;
      balls[i].directionY = 0.0;
    }
    // check lower-right pocket
    else if (balls[i].x >= 1069 - sqrt(45 * 45 - rBall * rBall) && balls[i].y >= 570 - sqrt(45 * 45 - rBall * rBall) && sqrt((balls[i].x - 1069) * (balls[i].x - 1069) + (balls[i].y - 570) * (balls[i].y - 570)) <= 22.5) {
      balls[i].pocket = true;
      balls[i].velocity = 0.0;
      balls[i].directionX = 0.0;
      balls[i].directionY = 0.0;
    }
    // check top-center/bottom-center pocket
    else if (balls[i].x >= 558.25 && balls[i].x <= 580.75 && (balls[i].y <= 70 || balls[i].y >= 570)) {
      balls[i].pocket = true;
      balls[i].velocity = 0.0;
      balls[i].directionX = 0.0;
      balls[i].directionY = 0.0;
    }

    // check collisions with the cushion
    else if (!balls[i].pocket && balls[i].velocity != 0 && cushionDelay == 0) {
      // upper and lower cushions
      if ((balls[i].x < 558.25 || balls[i].x > 580.75) && (balls[i].y <= 70 + rBall || balls[i].y >= 570 - rBall)) {
        balls[i].directionY = -balls[i].directionY * (eTable + 1) / 2;
        cushionDelay++;
      }
      // left and right cushions
      if (balls[i].x <= 70 + rBall || balls[i].x >= 1069 - rBall) {
        balls[i].directionX = -balls[i].directionX * (eTable + 1) / 2;
        cushionDelay++;
      }
    }
  }
}

/**
 * This function calculates the balls's velocity after collisions.
 */
void collisionBall(int b1, int b2) {
  float x1 = balls[b1].x;
  float y1 = balls[b1].y;
  float x2 = balls[b2].x;
  float y2 = balls[b2].y;

  // vector of the line of action
  float vLX = (x2 - x1) / sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
  float vLY = (y2 - y1) / sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

  // vector of the colliding surface
  float tempX = vLX - balls[b1].directionX * sqrt(2.0);
  float tempY = vLY - balls[b1].directionY * sqrt(2.0);
  float vTX = tempX / sqrt(tempX * tempX + tempY * tempY);
  float vTY = tempY / sqrt(tempX * tempX + tempY * tempY);

  // velocity of ball1 and ball2 along the line of action and the colliding surface
  float v1L = balls[b1].velocity * cos(acos(balls[b1].directionX * vLX + balls[b1].directionY * vLY));
  float v1T = balls[b1].velocity * sin(acos(balls[b1].directionX * vLX + balls[b1].directionY * vLY));
  float v2L = balls[b2].velocity * cos(acos(balls[b2].directionX * (-vLX) + balls[b2].directionY * (-vLY)));
  float v2T = balls[b2].velocity * sin(acos(balls[b2].directionX * (-vLX) + balls[b2].directionY * (-vLY)));

  // impulse from collision
  float J = -(v1L - v2L) * (eBall + 1.0) / (1.0 / mBall + 1.0 / mBall);

  // velocity along the line of action after collision
  float v1LA = v1L + J / mBall;
  float v2LA = v2L - J / mBall;

  tempX = -vTX * v1T - vLX * v1LA;
  tempY = -vTY * v1T - vLY * v1LA;
  balls[b1].directionX = tempX / sqrt(tempX * tempX + tempY * tempY);
  balls[b1].directionY = tempY / sqrt(tempX * tempX + tempY * tempY);
  balls[b1].velocity = sqrt(v1T * v1T + v1LA * v1LA);

  tempX = vTX * v2T + vLX * v2LA;
  tempY = vTY * v2T + vLY * v2LA;
  balls[b2].directionX = tempX / sqrt(tempX * tempX + tempY * tempY);
  balls[b2].directionY = tempY / sqrt(tempX * tempX + tempY * tempY);
  balls[b2].velocity = sqrt(v2T * v2T + v2LA * v2LA);
}

/**
 * This function performs Euler's integration to calculate every ball's position per frame.
 */
void transform() {
  // accelerate caused by sliding friction
  float accelerate = uSliding * 9.81;
  float dx = 0.0, dy = 0.0;
  float rx = 0.0, ry = 0.0;
  for (int i = 0; i < balls.length; i++) {
    // translation
    if (balls[i].velocity >= accelerate / 60.0) {
      dx = ((balls[i].velocity + balls[i].velocity - accelerate / 60.0) / 60.0 / 2.0) * balls[i].directionX / sqrt(balls[i].directionX * balls[i].directionX + balls[i].directionY * balls[i].directionY);
      dy = ((balls[i].velocity + balls[i].velocity - accelerate / 60.0) / 60.0 / 2.0) * balls[i].directionY / sqrt(balls[i].directionX * balls[i].directionX + balls[i].directionY * balls[i].directionY);
      balls[i].velocity -= accelerate / 60.0;
      balls[i].x += dx;
      balls[i].y += dy;
    } else if (balls[i].velocity != 0) {
      dx = (balls[i].velocity * (balls[i].velocity / accelerate) / 2.0) * balls[i].directionX / sqrt(balls[i].directionX * balls[i].directionX + balls[i].directionY * balls[i].directionY);
      dy = (balls[i].velocity * (balls[i].velocity / accelerate) / 2.0) * balls[i].directionY / sqrt(balls[i].directionX * balls[i].directionX + balls[i].directionY * balls[i].directionY);
      balls[i].velocity = 0.0;
      balls[i].x += dx;
      balls[i].y += dy;
    }
    // rotation
    if (balls[i].w * rBall * 0.0254 + accelerate / 60.0 <= balls[i].velocity) {
      rx = ((balls[i].w + balls[i].w - accelerate / 60.0 / rBall / 0.0254) / 60.0 / 2.0) * balls[i].directionX / sqrt(balls[i].directionX * balls[i].directionX + balls[i].directionY * balls[i].directionY);
      ry = ((balls[i].w + balls[i].w - accelerate / 60.0 / rBall / 0.0254) / 60.0 / 2.0) * balls[i].directionY / sqrt(balls[i].directionX * balls[i].directionX + balls[i].directionY * balls[i].directionY);
    }
  }
}

/**
 * This function draws the table on the canvas.
 */
void drawTable() {
  background(0);
  noStroke();
  translate(0, 0, -11.25);

  // table edge
  fill(99, 0, 0);
  rect(0, 0, 1140, 640, 45);

  fill(0, 100, 0);
  rect(50, 50, 1040, 540, 30);

  // top-center/botom-center pockets
  fill(0);
  ellipse(569.5, 70, 45, 45);
  ellipse(569.5, 570, 45, 45);

  // green baize
  stroke(0);
  fill(0, 120, 0);
  rect(70, 70, 1000, 500);
  noStroke();

  // upper-left/lower-left/upper-right/lower-right pockets
  fill(0);
  ellipse(70, 70, 45, 45);
  ellipse(70, 570, 45, 45);
  ellipse(1069, 70, 45, 45);
  ellipse(1069, 570, 45, 45);
  translate(0, 0, 11.25);
}

void drawBalls() {
  for (int i = 0; i < balls.length; i++) {
    if (!balls[i].pocket) {
      translate(balls[i].x, balls[i].y, 0);
      shape(balls[i].shape);
      translate(-balls[i].x, -balls[i].y, 0);
    }
  }
}

/**
 * This function performs hitting the cue ball bby applying an impulse to it.
 */
void hit(float impulse) {
  float tempX = balls[0].x - mouseX;
  float tempY = balls[0].y - mouseY;
  balls[0].directionX = tempX / sqrt(tempX * tempX + tempY * tempY);
  balls[0].directionY = tempY / sqrt(tempX * tempX + tempY * tempY);
  balls[0].velocity = impulse / mBall;
}
