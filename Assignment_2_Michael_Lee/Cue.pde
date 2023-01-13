/**
 * This is a class that represents the cue.
 */
class Cue {
  /** a list to store all vertices of a cue */
  ArrayList<float[]> vertices;
  
  /** slope */
  float a;
  
  /** y-intercept */
  float b;
  
  /** the distance between the cue ball and the cue gets longer when charging */
  int charge;
  
  /**
   * The constructor initializes some important variables.
   */
  public Cue() {
    vertices = new ArrayList();
    vertices.add(new float[]{0.0, -2.0, 0.0});
    vertices.add(new float[]{0, 2, 0});
    vertices.add(new float[]{5, 2, 0});
    vertices.add(new float[]{5, -2, 0});
    vertices.add(new float[]{6, -2, 0});
    vertices.add(new float[]{6, 2, 0});
    vertices.add(new float[]{205, 2, 0});
    vertices.add(new float[]{205, -2, 0});
    vertices.add(new float[]{206, -2, 0});
    vertices.add(new float[]{206, 2, 0});
    vertices.add(new float[]{479, 2, 0});
    vertices.add(new float[]{479, -2, 0});
    charge = 0;
  }
  
  /**
   * This function draws the cue on the canvas according to the position of the cue ball.
   */
  void drawCue() {
    float x = (float) mouseX;
    float y = (float) mouseY;
    float cX = balls[0].x;
    float cY = balls[0].y;
    float vX = x - cX;
    float vY = y - cY;
    float theta = acos(vX / sqrt(vX * vX + vY * vY));
    if (vY > 0) theta = -theta;
    a = vY / vX;
    b = y - a * x;
    float dx = cX + vX * (15.0 + charge) / sqrt(vX * vX + vY * vY);
    float dy = cY + vY * (15.0 + charge) / sqrt(vX * vX + vY * vY);

    float xTemp, yTemp, zTemp;

    beginShape(QUADS);
    for (int i = 0; i < vertices.size(); i++) {
      if (i == 0) fill(255);
      if (i == 4) fill(243, 198, 144);
      if (i == 8) fill(0);
      xTemp = vertices.get(i)[0] * cos(theta) + vertices.get(i)[1] * sin(theta) + dx;
      yTemp = vertices.get(i)[1] * cos(theta) - vertices.get(i)[0] * sin(theta) + dy;
      zTemp = vertices.get(i)[2];
      vertex(xTemp, yTemp, zTemp);
    }
    endShape();
  }
}
