/** 
 * This file illustates assignment 0 - Assinment_0_Michael-Lee
 */

// some global variables
// center of the cube
float cx = 0; float cy = 0; float cz = 0;
// length of the cube
float length = 30;
// displacement x (animation)
float dx = 0.0;  
// displacement y (animation)
float dy = 0.0;
// rotation degree in y-axis (animation)
float ry;
// starting time
float t;

/**
 * This function is executed once at the beginning for setting up the window (canvas size) and projection type, and also recording the starting time.
 */
void setup() {
  // canvas size
  size(300, 300, P3D);
  // orthogonal projection
  ortho();
  // deley the animation for setting up screen recording 
  delay(5000);
  // record the starting time
  t = millis();
}

/** 
 * This function is executed repeatedly for animation.
 */
void draw() {
  // always draw background first
  background(108);
  
  // displacement of X and Y positions, and rotation degree around Y-axis with respect to time (according to the assignment description)  
  dx = 5.0 * (millis() - t) / 1000.0;
  dy = 5.0 * (millis() - t) / 1000.0;
  ry = 18.0 * (millis() - t) / 1000.0 * (2 * PI / 360.0);
  
  // transformation matrix
  applyMatrix( cos(ry),   0.0, -sin(ry), 100 + dx,
                   0.0,   1.0,      0.0, 100 + dy,
               sin(ry),   0.0,  cos(ry),      0.0,
                   0.0,   0.0,      0.0,      1.0);

  // no stroke/sideline while drawing 
  noStroke();
  // draw a cube using quadrilaterals )
  beginShape(QUADS);
  // front face (red)
  fill(255, 0, 0);
  vertex(cx - length, cy - length, cz + length);
  vertex(cx - length, cy + length, cz + length);
  vertex(cx + length, cy + length, cz + length);
  vertex(cx + length, cy - length, cz + length);
  
  // right face (yellow)
  fill(255, 255, 0);
  vertex(cx + length, cy - length, cz + length);
  vertex(cx + length, cy + length, cz + length);
  vertex(cx + length, cy + length, cz - length);
  vertex(cx + length, cy - length, cz - length);
  
  // back face (green)
  fill(0, 255, 0);
  vertex(cx + length, cy - length, cz - length);
  vertex(cx + length, cy + length, cz - length);
  vertex(cx - length, cy + length, cz - length);
  vertex(cx - length, cy - length, cz - length);
  
  // left face (blue)
  fill(0, 0, 255);
  vertex(cx - length, cy - length, cz - length);
  vertex(cx - length, cy + length, cz - length);
  vertex(cx - length, cy + length, cz + length);
  vertex(cx - length, cy - length, cz + length);
  
  // top face (cyan) - not able to see it 
  fill(0, 255, 255);
  vertex(cx - length, cy - length, cz - length);
  vertex(cx - length, cy - length, cz + length);
  vertex(cx + length, cy - length, cz + length);
  vertex(cx + length, cy - length, cz - length);
  
  // bottom face (pink) - not able to see it
  fill(255, 0, 255);
  vertex(cx - length, cy + length, cz + length);
  vertex(cx - length, cy + length, cz - length);
  vertex(cx + length, cy + length, cz - length);
  vertex(cx + length, cy + length, cz + length);
  endShape();

  // stop looping after 20 seconds
  if ((millis() - t) / 1000.0 > 20) noLoop();
}
