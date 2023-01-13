/**
 * This file illustates assignment 1 - Assinment_1_Michael-Lee
 */

// some global variables
// counter and frameDlay are used for delaying the animation at the beginning
int counter, frameDelay, currentFrame;

// starting keyframe, ending keyframe, and u for slerp
int startKeyframe, endKeyframe, u;

// initial ceter position and half-length of the my cube
float cx, cy, cz, halfLength;

// the angle between two quaternions
float theta;

// quaternion of the starting keyframe
float wStart, xStart, yStart, zStart;

// quaternion of the ending keyframe
float wEnd, xEnd, yEnd, zEnd;

// quaternion calculated by using slerp
float w, x, y, z;

// transform matrix from quaternion
float m11, m12, m13, m21, m22, m23, m31, m32, m33;

// displacement of the position
float dx, dy, dz;

// store the positions of all vertices at keyframes
float[] tempVertices;

// current positions of all vertices of my cube
ArrayList<ArrayList<float[]>> vertices;

// store the provided keyframes
ArrayList<float[]> keyframes;

/**
 * This function is executed once at the beginning for setting up the window (canvas size) and projection type,
 * adding keyframes, converting axis/angles to quaternions, normoalizing the quaternions, and also initializing
 * some variables and datastructures.
 */
void setup() {
  size(500, 500, P3D);
  // put the camera at (0.0, 0.0, -100.0) looking at (0.0, 0.0, 0.0)
  camera(0.0, 0.0, -100.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
  counter = 0;
  frameDelay = 60;
  cx = 0.0;
  cy = 0.0;
  cz = 0.0;
  halfLength = 6.0;
  tempVertices = new float[72];
  keyframes = new ArrayList();
  keyframes.add(new float[]{0.0, 0.0, 0.0, 1.0, 1.0, -1.0, 0.0});
  keyframes.add(new float[]{4.0, 0.0, 0.0, 1.0, 1.0, -1.0, 30.0});
  keyframes.add(new float[]{8.0, 0.0, 0.0, 1.0, 1.0, -1.0, 90.0});
  keyframes.add(new float[]{12.0, 12.0, 12.0, 1.0, 1.0, -1.0, 180.0});
  keyframes.add(new float[]{12.0, 18.0, 18.0, 1.0, 1.0, -1.0, 270.0});
  keyframes.add(new float[]{18.0, 18.0, 18.0, 0.0, 1.0, 0.0, 90.0});
  keyframes.add(new float[]{18.0, 18.0, 18.0, 0.0, 0.0, 1.0, 90.0});
  keyframes.add(new float[]{25.0, 12.0, 12.0, 1.0, 0.0, 0.0, 0.0});
  keyframes.add(new float[]{25.0, 0.0, 18.0, 1.0, 0.0, 0.0, 0.0});
  keyframes.add(new float[]{25.0, 1.0, 18.0, 1.0, 0.0, 0.0, 0.0});

  // convert axis/angle to quaternion
  for (float[] i : keyframes) {
    i[3] = i[3] * sin(i[6] / 2 * 2 * PI / 360);
    i[4] = i[4] * sin(i[6] / 2 * 2 * PI / 360);
    i[5] = i[5] * sin(i[6] / 2 * 2 * PI / 360);
    i[6] = cos(i[6] / 2 * 2 * PI / 360);
  }

  // vertices of my cube (6 faces)
  vertices = new ArrayList();
  vertices.add(new ArrayList());
  vertices.add(new ArrayList());
  vertices.add(new ArrayList());
  vertices.add(new ArrayList());
  vertices.add(new ArrayList());
  vertices.add(new ArrayList());
}

/**
 * This function is executed repeatedly for animation.
 */
void draw() {
  // always draw background first
  background(0);

  // dalay the animation at the start
  if (counter < frameDelay) counter++;

  // start the animation
  else {
    currentFrame = counter - frameDelay;

    // staring frame of the animation (just set up the initial positions of all vertices without using transform matrix)
    if (counter == frameDelay) {
      // set up initial vertex positions of my cube
      vertices.get(0).clear();
      vertices.get(1).clear();
      vertices.get(2).clear();
      vertices.get(3).clear();
      vertices.get(4).clear();
      vertices.get(5).clear();
      vertices.get(0).add(new float[]{cx - halfLength, cy - halfLength, cz + halfLength});
      vertices.get(0).add(new float[]{cx - halfLength, cy + halfLength, cz + halfLength});
      vertices.get(0).add(new float[]{cx + halfLength, cy + halfLength, cz + halfLength});
      vertices.get(0).add(new float[]{cx + halfLength, cy - halfLength, cz + halfLength});
      vertices.get(1).add(new float[]{cx + halfLength, cy - halfLength, cz + halfLength});
      vertices.get(1).add(new float[]{cx + halfLength, cy + halfLength, cz + halfLength});
      vertices.get(1).add(new float[]{cx + halfLength, cy + halfLength, cz - halfLength});
      vertices.get(1).add(new float[]{cx + halfLength, cy - halfLength, cz - halfLength});
      vertices.get(2).add(new float[]{cx + halfLength, cy - halfLength, cz - halfLength});
      vertices.get(2).add(new float[]{cx + halfLength, cy + halfLength, cz - halfLength});
      vertices.get(2).add(new float[]{cx - halfLength, cy + halfLength, cz - halfLength});
      vertices.get(2).add(new float[]{cx - halfLength, cy - halfLength, cz - halfLength});
      vertices.get(3).add(new float[]{cx - halfLength, cy - halfLength, cz - halfLength});
      vertices.get(3).add(new float[]{cx - halfLength, cy + halfLength, cz - halfLength});
      vertices.get(3).add(new float[]{cx - halfLength, cy + halfLength, cz + halfLength});
      vertices.get(3).add(new float[]{cx - halfLength, cy - halfLength, cz + halfLength});
      vertices.get(4).add(new float[]{cx - halfLength, cy - halfLength, cz - halfLength});
      vertices.get(4).add(new float[]{cx - halfLength, cy - halfLength, cz + halfLength});
      vertices.get(4).add(new float[]{cx + halfLength, cy - halfLength, cz + halfLength});
      vertices.get(4).add(new float[]{cx + halfLength, cy - halfLength, cz - halfLength});
      vertices.get(5).add(new float[]{cx - halfLength, cy + halfLength, cz + halfLength});
      vertices.get(5).add(new float[]{cx - halfLength, cy + halfLength, cz - halfLength});
      vertices.get(5).add(new float[]{cx + halfLength, cy + halfLength, cz - halfLength});
      vertices.get(5).add(new float[]{cx + halfLength, cy + halfLength, cz + halfLength});

      // memorize all vertices' positions at the starting keyframe
      memorizeVertices();
    }
    // other frames of the animation
    else {
      // starting keyframe of the two consecutive keyframes
      startKeyframe = (currentFrame - 1) / 60;

      // ending keyframe of the two consecutive keyframes
      endKeyframe = startKeyframe + 1;

      // u used in slerp
      u = currentFrame % 60;
      if (u == 0) u = 60;
      // memorize all vertices' positions at the starting keyframe of every two consecutive keyframes
      else if (u == 1) memorizeVertices();

      // calculate displacement
      dx = keyframes.get(startKeyframe)[0] + (keyframes.get(endKeyframe)[0] - keyframes.get(startKeyframe)[0]) * u / 60.0;
      dy = keyframes.get(startKeyframe)[1] + (keyframes.get(endKeyframe)[1] - keyframes.get(startKeyframe)[1]) * u / 60.0;
      dz = keyframes.get(startKeyframe)[2] + (keyframes.get(endKeyframe)[2] - keyframes.get(startKeyframe)[2]) * u / 60.0;

      // first quaternion
      wStart = keyframes.get(startKeyframe)[6];
      xStart = keyframes.get(startKeyframe)[3];
      yStart = keyframes.get(startKeyframe)[4];
      zStart = keyframes.get(startKeyframe)[5];

      // normalize the quaternion (make sure the sum of all squares do not exceed 1)
      float wTemp, xTemp, yTemp, zTemp, difference = 0.0;
      do {
        wTemp = wStart / (sqrt(wStart * wStart + xStart * xStart + yStart * yStart + zStart * zStart) + difference);
        xTemp = xStart / (sqrt(wStart * wStart + xStart * xStart + yStart * yStart + zStart * zStart) + difference);
        yTemp = yStart / (sqrt(wStart * wStart + xStart * xStart + yStart * yStart + zStart * zStart) + difference);
        zTemp = zStart / (sqrt(wStart * wStart + xStart * xStart + yStart * yStart + zStart * zStart) + difference);
        difference += 0.000001;
      } while (wTemp * wTemp + xTemp * xTemp + yTemp * yTemp + zTemp * zTemp > 1.0);
      wStart = wTemp;
      xStart = xTemp;
      yStart = yTemp;
      zStart = zTemp;


      // second quaternion
      wEnd = keyframes.get(endKeyframe)[6];
      xEnd = keyframes.get(endKeyframe)[3];
      yEnd = keyframes.get(endKeyframe)[4];
      zEnd = keyframes.get(endKeyframe)[5];
      // normalization
      difference = 0.0;
      do {
        wTemp = wEnd / (sqrt(wEnd * wEnd + xEnd * xEnd + yEnd * yEnd + zEnd * zEnd) + difference);
        xTemp = xEnd / (sqrt(wEnd * wEnd + xEnd * xEnd + yEnd * yEnd + zEnd * zEnd) + difference);
        yTemp = yEnd / (sqrt(wEnd * wEnd + xEnd * xEnd + yEnd * yEnd + zEnd * zEnd) + difference);
        zTemp = zEnd / (sqrt(wEnd * wEnd + xEnd * xEnd + yEnd * yEnd + zEnd * zEnd) + difference);
        difference += 0.000001;
      } while (wTemp * wTemp + xTemp * xTemp + yTemp * yTemp + zTemp * zTemp > 1.0);
      wEnd = wTemp;
      xEnd = xTemp;
      yEnd = yTemp;
      zEnd = zTemp;

      // calculate the angle between two quaternions => cos(theta) = q1 dot q2
      // parallel
      if (wStart * wEnd + xStart * xEnd + yStart * yEnd + zStart * zEnd >= 1.0) {
        w = wEnd;
        x = xEnd;
        y = yEnd;
        z = zEnd;
      } else {
        theta = acos(wStart * wEnd + xStart * xEnd + yStart * yEnd + zStart * zEnd);

        // slerp
        w = wStart * sin((1.0 - u / 60.0) * theta) / sin(theta) + wEnd * sin((u / 60.0) * theta) / sin(theta);
        x = xStart * sin((1.0 - u / 60.0) * theta) / sin(theta) + xEnd * sin((u / 60.0) * theta) / sin(theta);
        y = yStart * sin((1.0 - u / 60.0) * theta) / sin(theta) + yEnd * sin((u / 60.0) * theta) / sin(theta);
        z = zStart * sin((1.0 - u / 60.0) * theta) / sin(theta) + zEnd * sin((u / 60.0) * theta) / sin(theta);

        // normalization
        difference = 0.0;
        do {
          wTemp = w / (sqrt(w * w + x * x + y * y + z * z) + difference);
          xTemp = x / (sqrt(w * w + x * x + y * y + z * z) + difference);
          yTemp = y / (sqrt(w * w + x * x + y * y + z * z) + difference);
          zTemp = z / (sqrt(w * w + x * x + y * y + z * z) + difference);
          difference += 0.000001;
        } while (wTemp * wTemp + xTemp * xTemp + yTemp * yTemp + zTemp * zTemp > 1.0);
        w = wTemp;
        x = xTemp;
        y = yTemp;
        z = zTemp;
      }

      // quaternion to transform matrix
      m11 = 1 - 2 * y * y - 2 * z * z;
      m12 = 2 * x * y + 2 * w * z;
      m13 = 2 * x * z - 2 * w * y;
      m21 = 2 * x * y - 2 * w * z;
      m22 = 1 - 2 * x * x - 2 * z * z;
      m23 = 2 * y * z + 2 * w * x;
      m31 = 2 * x * z + 2 * w * y;
      m32 = 2 * y * z - 2 * w * x;
      m33 = 1 - 2 * x * x - 2 * y * y;

      // rotation
      transform(m11, m12, m13, 0.0,
        m21, m22, m23, 0.0,
        m31, m32, m33, 0.0);

      // translation
      transform(1.0, 0.0, 0.0, dx,
        0.0, 1.0, 0.0, dy,
        0.0, 0.0, 1.0, dz);
    }

    // draw a cube
    beginShape(QUADS);
    for (int i = 0; i < 6; i++) {
      if (i == 0) fill(255, 0, 0);
      else if (i == 1) fill(255, 255, 0);
      else if (i == 2) fill(0, 255, 0);
      else if (i == 3) fill(0, 0, 255);
      else if (i == 4) fill(0, 255, 255);
      else if (i == 5) fill(255, 0, 255);
      for (float[] f : vertices.get(i)) {
        vertex(f[0], f[1], f[2]);
      }
    }
    endShape();
    
    // reset the position to the starting keyframe of two consecutive keyframes
    reset();
    counter++;
    
    // ending frame of the animation
    if (currentFrame == 540) counter = 0;
  }
}


/** 
 * This function memorizes all vertices' positions at the starting keyframe of every two consecutive keyframes.
 */
void memorizeVertices() {
  int temp = 0;
  for (int i = 0; i < 6; i++) {
    for (float[] a : vertices.get(i)) {
      tempVertices[temp] = a[0];
      temp++;
      tempVertices[temp] = a[1];
      temp++;
      tempVertices[temp] = a[2];
      temp++;
    }
  }
}


/**
 * This function sets all vertices's positions to the starting keyframe's.
 */
void reset() {
  int temp = 0;
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      for (int k = 0; k < 3; k++) {
        vertices.get(i).get(j)[k] = tempVertices[temp];
        temp++;
      }
    }
  }
}

/**
 * This function performs transformation (using tranform matrix for raotation and translation).
 */
void transform(float m11, float m12, float m13, float m14,
  float m21, float m22, float m23, float m24,
  float m31, float m32, float m33, float m34) {
  float xTemp, yTemp, zTemp;
  for (ArrayList<float[]> l : vertices) {
    for (float[] f : l) {
      xTemp = m11 * f[0] + m12 * f[1] + m13 * f[2] + m14 * 1.0;
      yTemp = m21 * f[0] + m22 * f[1] + m23 * f[2] + m24 * 1.0;
      zTemp = m31 * f[0] + m32 * f[1] + m33 * f[2] + m34 * 1.0;
      f[0] = xTemp;
      f[1] = yTemp;
      f[2] = zTemp;
    }
  }
}
