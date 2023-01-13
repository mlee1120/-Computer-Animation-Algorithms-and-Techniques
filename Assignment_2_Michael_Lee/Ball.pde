/**
 * This is a class that represents the balls.
 */
class Ball {
  /** x coordinate of the ball */
  float x;

  /** y coordinate of the ball */
  float y;

  /** z coordinate of the ball */
  float z;

  /** velocity of the ball */
  float velocity;

  /** direction of the ball along x */
  float directionX;

  /** direction of the ball along y */
  float directionY;

  /** angular velocity */
  float w;
  float rX, rY;

  /** if the ball is in a pocket */
  boolean pocket;

  /** shape of the ball */
  PShape shape;

  /** image used as the texture of the ball */
  PImage img;

  /**
   * The constructor initializes some important variables.
   */
  public Ball(float x, float y, int imgNumber) {
    this.x = x;
    this.y = y;
    this.z = 0.0;
    // velocity (magnitude)
    velocity = 0.0;
    // velocity directions in x/y (unit)
    directionX = 0.0;
    directionY = 0.0;
    w = 0.0;
    rX = 0.0;
    rY = 0.0;
    pocket = false;
    noStroke();
    noFill();
    shape = createShape(SPHERE, rBall);
    img = loadImage("texture/" + imgNumber + ".png");
    shape.setTexture(img);
  }
}
