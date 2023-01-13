/**
 * This file illustates assignment 4 - Assinment_4_Michael_Lee.pde.
 *
 * @author Michael Lee, ml3406@rit.edu
 */

/** the comet */
Comet comet;

/** frame counter */
float counter;

/** 
 * This function is executed once at the beginning for setting up the canvas size,
 * camera, projection type, and the color of the comet, adding the keyframes data 
 * (hardcoded), and generating the particles (comet).
 */
void setup() {
  size(1800, 1000, P3D);
  ortho();
  camera(800, 0, -500, 800, 0, 0, 0, -1, 0);

  // color of the comet
  stroke(120, 210, 255);

  // create a comet and add keyframes. (only x-rotation and x-translation for convenience)
  comet = new Comet();
  
  comet.addKeyframe(0.0, 0000.0, 0.0, 0.0, 000.0, 0.0, 0.0);
  comet.addKeyframe(0.3, 0160.0, 0.0, 0.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(0.6, 0320.0, 0.0, 0.0, 180.0, 0.0, 0.0);
  comet.addKeyframe(0.9, 0480.0, 0.0, 0.0, 270.0, 0.0, 0.0);
  comet.addKeyframe(1.2, 0640.0, 0.0, 0.0, 360.0, 0.0, 0.0);
  comet.addKeyframe(1.5, 0800.0, 0.0, 0.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(1.8, 0960.0, 0.0, 0.0, 180.0, 0.0, 0.0);
  comet.addKeyframe(2.1, 1120.0, 0.0, 0.0, 270.0, 0.0, 0.0);
  comet.addKeyframe(2.4, 1280.0, 0.0, 0.0, 360.0, 0.0, 0.0);
  comet.addKeyframe(2.7, 1440.0, 0.0, 0.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(3.0, 1600.0, 0.0, 0.0, 180.0, 0.0, 0.0);
  /*
  comet.addKeyframe(0.0, -800.0, 0.0, 0.0, 000.0, 0.0, 0.0);
  comet.addKeyframe(0.3, -640.0, 0.0, 0.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(0.6, -480.0, 0.0, 0.0, 180.0, 0.0, 0.0);
  comet.addKeyframe(0.9, -320.0, 0.0, 0.0, 270.0, 0.0, 0.0);
  comet.addKeyframe(1.2, -160.0, 0.0, 0.0, 360.0, 0.0, 0.0);
  comet.addKeyframe(1.5, 0000.0, 0.0, 0.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(1.8, 0160.0, 0.0, 0.0, 180.0, 0.0, 0.0);
  comet.addKeyframe(2.1, 0320.0, 0.0, 0.0, 270.0, 0.0, 0.0);
  comet.addKeyframe(2.4, 0480.0, 0.0, 0.0, 360.0, 0.0, 0.0);
  comet.addKeyframe(2.7, 0640.0, 0.0, 0.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(3.0, 0800.0, 0.0, 0.0, 180.0, 0.0, 0.0);
  */
  /*
  comet.addKeyframe(0.0, -800.0, 0.0, -200.0, 000.0, 0.0, 0.0);
  comet.addKeyframe(0.3, -700.0, 0.0, -200.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(0.6, -600.0, 0.0, -200.0, 180.0, 0.0, 0.0);
  comet.addKeyframe(0.9, -500.0, 0.0, -200.0, 270.0, 0.0, 0.0);
  comet.addKeyframe(1.2, -350.0, 0.0, -200.0, 360.0, 0.0, 0.0);
  comet.addKeyframe(1.5, -200.0, 0.0, -200.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(1.8, -050.0, 0.0, -200.0, 180.0, 0.0, 0.0);
  comet.addKeyframe(2.1, 0150.0, 0.0, -200.0, 270.0, 0.0, 0.0);
  comet.addKeyframe(2.4, 0400.0, 0.0, -200.0, 360.0, 0.0, 0.0);
  comet.addKeyframe(2.7, 0700.0, 0.0, -200.0, 090.0, 0.0, 0.0);
  comet.addKeyframe(3.0, 0800.0, 0.0, -200.0, 180.0, 0.0, 0.0);
*/   
  
  // generate particles
  comet.generate();
  
  // frame counter
  counter = 1.0;
}

/**
 * This function is executed repeatedly for animation.
 */
void draw() {
  // reset to frame 0 data
  if (counter == 181) {
    counter = 1.0;
    comet.x = comet.keyframes.get(0)[1];
    comet.y = comet.keyframes.get(0)[2];
    comet.z = comet.keyframes.get(0)[3];
    comet.rX = comet.keyframes.get(0)[4];
    comet.rY = comet.keyframes.get(0)[5];
    comet.rZ = comet.keyframes.get(0)[6];
    comet.xLast = comet.x;
    comet.yLast = 1.0;
    comet.zLast = comet.z;
  }
  background(0);
  
  // transformation of the comet (center) and all particles 
  comet.transform();
  
  // draw all particles
  comet.drawParticles();
  
  // generate new particles if neccesary
  comet.generate();
  
  // check and destroy particles that pass their lifetimes
  comet.checkLife();
  counter++;
}
