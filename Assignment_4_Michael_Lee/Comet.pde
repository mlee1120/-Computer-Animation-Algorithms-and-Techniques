/**
 * This file illustates assignment 4 - Comet.pde.
 *
 * @author Michael Lee, ml3406@rit.edu
 */

/**
 * This is a class represents comets.
 */
class Comet {
  /** Comet's position */
  float x, y, z;

  /** Comet's position of last frame (not ketframe) */
  float xLast, yLast, zLast;

  /** Comet's oriention */
  float rX, rY, rZ;

  /** keyframes for the comet */
  ArrayList<float[]> keyframes;

  /** a list of all particles of the comet */
  ArrayList<Particle> particles;

  /**
   * The constructor initializes some important variables.
   */
  public Comet() {
    keyframes = new ArrayList();
    particles = new ArrayList();
  }

  /**
   * This function adds a keyframe to this comet and sets up the comet's
   * initial position and orientation if it is the first keyframe.
   *
   * @time - time of this keyframe
   * @pX   - x position
   * @pY   - y position
   * @pZ   - z position
   * @rX   - x rotation
   * @rY   - y rotation
   * @rZ   - z rotation
   */
  public void addKeyframe(float time, float pX, float pY, float pZ, float rX, float rY, float rZ) {
    if (keyframes.size() == 0) {
      x = pX;
      y = pY;
      z = pZ;
      xLast = pX;
      yLast = 1.0;
      zLast = pZ;
      this.rX = rX;
      this.rY = rY;
      this.rZ = rZ;
    }
    keyframes.add(new float[]{time, pX, pY, pZ, rX, rY, rZ});
  }

  /**
   * This function performs transfomation of the comet according
   * to the keyframes' data. It also calls for transformation of
   * all particles of the comet.
   */
  public void transform() {
    // transformation based on the current frame
    int frameNum = (int) counter / 18;
    int interpolateNum = (int) counter % 18;
    float theta;
    Quaternion p, rotate;
    xLast = x;
    yLast = y;
    zLast = z;
    if (interpolateNum == 0) {
      theta = keyframes.get(frameNum)[4] - rX;
      rotate = new Quaternion(cos(theta / 2 * PI / 180), sin(theta / 2 * PI / 180), 0, 0);
      p = new Quaternion(0, x, y, z);
      p = rotate.inverse().product(p).product(rotate);
      x = keyframes.get(frameNum)[1];
      y = p.y;
      z = p.z;
      rX += theta;
      if (rX == 360) rX = 0;
    } else {
      if (keyframes.get(frameNum)[4] == 360) theta = keyframes.get(frameNum + 1)[4] / 18;
      else theta = (keyframes.get(frameNum + 1)[4] - keyframes.get(frameNum)[4]) / 18;
      rotate = new Quaternion(cos(theta / 2 * PI / 180), sin(theta / 2 * PI / 180), 0, 0);
      p = new Quaternion(0, x, y, z);
      p = rotate.inverse().product(p).product(rotate);
      x = x + (keyframes.get(frameNum + 1)[1] - keyframes.get(frameNum)[1]) / 18;
      y = p.y;
      z = p.z;
      rX += theta;
    }

    // particles' transformation
    for (Particle particle : particles) {
      particle.transform();
    }
  }

  /**
   * This function checks every particle to see if they
   * should be destroyed or not based on their lifetimes.
   */
  public void checkLife() {
    ArrayList<Integer> toRemove = new ArrayList();
    for (int i = particles.size() - 1; i >= 0; i--) {
      if (particles.get(i).lifetime <= 0) toRemove.add(i);
    }
    for (int i : toRemove) {
      particles.remove(i);
    }
  }

  /**
   * This function generates new particles for the comet if neccesary.
   */
  public void generate() {
    float[] temp = perpendicular();
    Quaternion p, rotate;
    float theta;
    // total number of particles is 1899
    while (particles.size() < 5000) {
      // randomly generate a direction (in a specific range) for the new particle
      theta = random(0, 5); // some degrees away form the comet's traveling path
      rotate = new Quaternion(cos(theta / 2 * PI / 180), temp[0] * sin(theta / 2 * PI / 180), temp[1] * sin(theta / 2 * PI / 180), temp[2] * sin(theta / 2 * PI / 180));
      p = new Quaternion(0.0, xLast, yLast, zLast);
      p = rotate.product(p).product(rotate.inverse());

      // random rotation around the traveling path
      theta = random(0, 359);
      rotate = new Quaternion(cos(theta / 2 * PI / 180), temp[3] * sin(theta / 2 * PI / 180), temp[4] * sin(theta / 2 * PI / 180), temp[5] * sin(theta / 2 * PI / 180));
      p = rotate.product(p).product(rotate.inverse());


      // generate a new particle around a specific range of the comet (radius = 20)
      float xTemp, yTemp, zTemp;
      do {
        xTemp = random(-20, 20);
        yTemp = random(-20, 20);
        zTemp = random(-20, 20);
      } while (xTemp * xTemp + yTemp * yTemp + zTemp * zTemp > 400);
      particles.add(new Particle(x + xTemp, y + yTemp, z + zTemp, p.x - x, p.y - y, p.z - z));
    }
  }

  /**
   * This is a helper function of generate() that calculates the
   * unit vector of traveling path and another unit vector that
   * is perpendicular to the first vector, and then, returns them.
   *
   * @return the two unit vectors as a float array
   */
  public float[] perpendicular() {
    float cx = xLast - x, cy = yLast - y, cz = zLast - z;
    float c = -(x * cx + y * cy + z * cz);
    float x1, y1, z1, x2, y2, z2;
    if (cx == 0 && cy == 0) {
      x1 = random(1, 5);
      y1 = random(6, 10);
      z1 = -c / cz;
      x2 = random(6, 10);
      y2 = random(1, 5);
      z2 = z1;
    } else if (cx == 0 && cz == 0) {
      x1 = random(1, 5);
      y1 = -c / cy;
      z1 = random(6, 10);
      x2 = random(6, 10);
      y2 = y1;
      z2 = random(1, 5);
    } else if (cy == 0 && cz == 0) {
      x1 = -c / cx;
      y1 = random(1, 5);
      z1 = random(6, 10);
      x2 = x1;
      y2 = random(6, 10);
      z2 = random(1, 5);
    } else {
      x1 = random(1, 5);
      y1 = random(6, 10);
      z1 = -(x1 * cx + y1 * cy + c) / cz;
      x2 = random(6, 10);
      y2 = random(1, 5);
      z2 = -(x2 * cx + y2 * cy + c) / cz;
    }

    // for normalization
    float xTemp = x1 - x2, yTemp = y1 - y2, zTemp = z1 - z2;
    float temp = sqrt(xTemp * xTemp + yTemp * yTemp + zTemp * zTemp);
    xTemp = xTemp / temp;
    yTemp = yTemp / temp;
    zTemp = zTemp / temp;
    temp = sqrt(cx * cx + cy * cy + cz * cz);
    cx = cx / temp;
    cy = cy / temp;
    cz = cz / temp;
    return new float[]{xTemp, yTemp, zTemp, cx, cy, cz};
  }

  /**
   * This function calls to draw every particle.
   */
  public void drawParticles() {
    for (Particle particle : particles) {
      particle.drawParticle();
    }
  }
}
