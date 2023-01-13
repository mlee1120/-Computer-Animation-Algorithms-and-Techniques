/**
 * This file illustates assignment 4 - Particle.pde.
 *
 * @author Michael Lee, ml3406@rit.edu
 */

/**
 * This is a class represents particles.
 */
class Particle {
  /** position of the particle */
  float x, y, z;
  
  /** lifetime of the particle */
  float lifetime;
  
  /** traveling direction of the particle */
  float[] direction;
  
  /**
   * The constructor initializes all variable.
   *
   * @x - x postion
   * @y - y postion
   * @z - z postion
   * @dx - x direction
   * @dy - y direction
   * @dz - z direction
   */
  public Particle(float x, float y, float z, float dx, float dy, float dz) {
    this.x = x;
    this.y = y;
    this.z = z;
    direction = new float[]{dx, dy, dz};
    normalize();
    // a random lifetime from 0.1 ~ 0.3 seconds
    lifetime = random(0.5,1);
  }

  /**
   * This function draws this particle on the canvas.
   */
  public void drawParticle() {
    beginShape(POINTS);
    vertex(x, y, z);
    endShape();
  }

  /**
   * This function normalizes the traveling direction (vector) of this particle.
   */
  public void normalize() {
    float temp = sqrt(direction[0] * direction[0] + direction[1] * direction[1] + direction[2] * direction[2]);
    direction[0] = direction[0] / temp;
    direction[1] = direction[1] / temp;
    direction[2] = direction[2] / temp;
  }
  
  /**
   * This function tranforms (translation only) this particle and updates its lifetime every frame.
   */
  public void transform() {
    //float temp = x;
    x += direction[0];
    y += direction[1];
    z += direction[2];
    //if(x == 800 ||(temp > 800 && x < 800)) direction[0] = -direction[0]; 
    
    direction[1] -= 0.2; 
    direction[0] = direction[0] * 1.1;
    direction[1] = direction[1] * 1.1;
    direction[2] = direction[2] * 1.1;
    lifetime -= 1.0 / 60.0;
  }
}
