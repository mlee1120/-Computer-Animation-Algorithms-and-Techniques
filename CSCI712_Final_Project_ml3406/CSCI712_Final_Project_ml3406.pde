/**
 * This file illustates Final Project - CSCI712_Final_Project_ml3406.pde.
 * This is the main code of the project.
 *
 * @author Michael Lee, ml3406@rit.edu
 */

/** all parts of my character */
Part root, rightThigh, rightLeg, rightFoot, leftThigh, leftLeg, leftFoot, lumbar, chest, rightUpperarm, rightArm, rightHand, staff, leftUpperarm, leftArm, leftHand, neck, head;

/** for reading the texture image of the chracter's head */
PImage img;

/** shape of the head (for attaching texture) */
PShape shape;

/** a 2D ArrayList that stores all joints' positions at every keyframes */
ArrayList<ArrayList<float[]>> keyframesVertices;

/** a 2D ArrayList that stores all vectors converted from vertices' positions */
ArrayList<ArrayList<float[]>> keyframesVectors;

/** an ArrayList that stores all vectors at the current frame */
ArrayList<float[]> currentOrientations;

/** current position of the center of the root joint (pelvic) */
float[] currentRootPosition;

/** since there is a translation at the root joint, we need a scale to convert pixel values from diffent data */
float scale;

/** an integer used to keep track of the current frame number */
int counter;

// total frame number of the action
int totalFrame;

// to perform interpolation or not
boolean interpolation = true;

// to perform attack (false) or defend (true) (P.S. when there are more actions, it should be a int using switch to decide)
boolean attack_defend = true;

/**
 * This function is excuted once at the beginning to initialze all important fields.
 */
void setup() {
  // canvas size 1600 * 900 (3D space)
  size(1600, 900, P3D);

  // projection type
  ortho();

  // camera position (x right; y down; z out)
  camera(-180, -150, 500, 0, 0, 0, 0, 1, 0);

  // black background
  background(0);

  // polygon's filling color
  fill(100);

  // read the texture image
  img = loadImage("Emil_from_Nier.png");

  // build a 3D model
  buildModel();
  keyframesVertices = new ArrayList();
  keyframesVectors = new ArrayList();
  currentOrientations = new ArrayList();
  currentRootPosition = new float[3];

  // read motion data (I hard-coded them for convenience)
  if (attack_defend) input1();
  else input2();

  counter = 0;
}

/**
 * This function is executed repeatedly for producing animation
 */
void draw() {
  // reset after the animation + 45 frame delay
  if (counter > totalFrame + 45) {
    counter = 0;
    transform();
  }

  // during the animation (transform per frame)
  else if (counter != 0 && counter <= totalFrame) {
    transform();
  }

  // reset canvas and draw the character of this frame
  background(0);
  drawEmil(root);
  counter++;
}

/**
 * This function performs transformation of the character according to the current frame number.
 * Keyframing/interpolations are handled in this function.
 */
public void transform() {
  // keyframe exists every 15 frames
  int remainder = counter%15;

  // for locating the current frame (in between which two keyframes)
  int keyframe = counter/15;

  // unit vector of the rotating axis
  float[] axis;

  // rotating angle
  float theta;

  // right at keyframes
  if (remainder == 0) {
    // translation of the root
    root.translate(new float[]{scale*(keyframesVertices.get(keyframe).get(0)[0] - currentRootPosition[0]), scale*(keyframesVertices.get(keyframe).get(0)[1] - currentRootPosition[1]), scale*(keyframesVertices.get(keyframe).get(0)[2] - currentRootPosition[2])});
    currentRootPosition[0] = keyframesVertices.get(keyframe).get(0)[0];
    currentRootPosition[1] = keyframesVertices.get(keyframe).get(0)[1];
    currentRootPosition[2] = keyframesVertices.get(keyframe).get(0)[2];

    // rotation
    for (int i = 0; i < keyframesVectors.get(keyframe).size(); i++) {
      // cross production -> rotating axis
      axis = crossProduct(currentOrientations.get(i), keyframesVectors.get(keyframe).get(i));

      // make it unit vector
      axis = normalizeVector(axis);

      // dot production -> rotating angle
      theta = dotProduct(currentOrientations.get(i), keyframesVectors.get(keyframe).get(i));

      // handle 16 vectors
      switch(i) {
      case 0:
        root.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(root);
        break;
      case 1:
        rightThigh.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightThigh);
        break;
      case 2:
        rightLeg.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightLeg);
        break;
      case 3:
        leftThigh.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftThigh);
        break;
      case 4:
        leftLeg.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftLeg);
        break;
      case 5:
        lumbar.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(lumbar);
        break;
      case 6:
        chest.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(chest);
        break;
      case 7:
        chest.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(chest);
        break;
      case 8:
        rightUpperarm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightUpperarm);
        break;
      case 9:
        rightArm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightArm);
        break;
      case 10:
        // left hand rotates in symmetric with respect to right hand
        rightHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        leftHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * (-axis[0]), sin(theta / 2) * axis[1], sin(theta / 2) * (-axis[2])));
        translate(rightHand);
        break;
      case 11:
        // left hand rotates in symmetric with respect to right hand
        staff.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        rightHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        leftHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * (-axis[0]), sin(theta / 2) * axis[1], sin(theta / 2) * (-axis[2])));
        translate(rightHand);
        break;
      case 12:
        leftUpperarm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftUpperarm);
        break;
      case 13:
        leftArm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftArm);
        break;
      case 14:
        neck.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(neck);
        break;
      case 15:
        head.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(head);
        break;
      }

      // record current vectors
      currentOrientations.get(i)[0] = keyframesVectors.get(keyframe).get(i)[0];
      currentOrientations.get(i)[1] = keyframesVectors.get(keyframe).get(i)[1];
      currentOrientations.get(i)[2] = keyframesVectors.get(keyframe).get(i)[2];
    }
  }

  // interpolation (between keyframes)
  else if (interpolation) {
    // translation of the root
    root.translate(new float[]{scale*(keyframesVertices.get(keyframe+1).get(0)[0] - currentRootPosition[0])/(15 - remainder + 1), scale*(keyframesVertices.get(keyframe+1).get(0)[1] - currentRootPosition[1])/(15-remainder+1), scale*(keyframesVertices.get(keyframe+1).get(0)[2] - currentRootPosition[2])/(15-remainder+1)});
    currentRootPosition[0] += (keyframesVertices.get(keyframe+1).get(0)[0] - currentRootPosition[0])/(15 - remainder + 1);
    currentRootPosition[1] += (keyframesVertices.get(keyframe+1).get(0)[1] - currentRootPosition[1])/(15 - remainder + 1);
    currentRootPosition[2] += (keyframesVertices.get(keyframe+1).get(0)[2] - currentRootPosition[2])/(15 - remainder + 1);

    // rotation
    for (int i = 0; i < keyframesVectors.get(keyframe).size(); i++) {
      axis = crossProduct(currentOrientations.get(i), keyframesVectors.get(keyframe+1).get(i));
      axis = normalizeVector(axis);
      theta = dotProduct(currentOrientations.get(i), keyframesVectors.get(keyframe+1).get(i)) / (15 - remainder + 1);
      // current vectors are recorded accordingly
      switch(i) {
      case 0:
        root.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(root);
        float[] temp = normalizeVector(new float[]{root.childrenJoints.get(1)[0] - root.childrenJoints.get(0)[0], root.childrenJoints.get(1)[1] - root.childrenJoints.get(0)[1], root.childrenJoints.get(1)[2] - root.childrenJoints.get(0)[2]});
        currentOrientations.get(i)[0] = temp[0];
        currentOrientations.get(i)[1] = temp[1];
        currentOrientations.get(i)[2] = temp[2];
        break;
      case 1:
        rightThigh.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightThigh);
        currentOrientations.get(i)[0] = rightThigh.childrenJoints.get(0)[0] - rightThigh.parentJoint[0];
        currentOrientations.get(i)[1] = rightThigh.childrenJoints.get(0)[1] - rightThigh.parentJoint[1];
        currentOrientations.get(i)[2] = rightThigh.childrenJoints.get(0)[2] - rightThigh.parentJoint[2];
        break;
      case 2:
        rightLeg.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightLeg);
        currentOrientations.get(i)[0] = rightLeg.childrenJoints.get(0)[0] - rightLeg.parentJoint[0];
        currentOrientations.get(i)[1] = rightLeg.childrenJoints.get(0)[1] - rightLeg.parentJoint[1];
        currentOrientations.get(i)[2] = rightLeg.childrenJoints.get(0)[2] - rightLeg.parentJoint[2];
        break;
      case 3:
        leftThigh.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftThigh);
        currentOrientations.get(i)[0] = leftThigh.childrenJoints.get(0)[0] - leftThigh.parentJoint[0];
        currentOrientations.get(i)[1] = leftThigh.childrenJoints.get(0)[1] - leftThigh.parentJoint[1];
        currentOrientations.get(i)[2] = leftThigh.childrenJoints.get(0)[2] - leftThigh.parentJoint[2];
        break;
      case 4:
        leftLeg.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftLeg);
        currentOrientations.get(i)[0] = leftLeg.childrenJoints.get(0)[0] - leftLeg.parentJoint[0];
        currentOrientations.get(i)[1] = leftLeg.childrenJoints.get(0)[1] - leftLeg.parentJoint[1];
        currentOrientations.get(i)[2] = leftLeg.childrenJoints.get(0)[2] - leftLeg.parentJoint[2];
        break;
      case 5:
        lumbar.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(lumbar);
        currentOrientations.get(i)[0] = lumbar.childrenJoints.get(0)[0] - lumbar.parentJoint[0];
        currentOrientations.get(i)[1] = lumbar.childrenJoints.get(0)[1] - lumbar.parentJoint[1];
        currentOrientations.get(i)[2] = lumbar.childrenJoints.get(0)[2] - lumbar.parentJoint[2];
        break;
      case 6:
        chest.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(chest);
        currentOrientations.get(i)[0] = chest.childrenJoints.get(2)[0] - chest.parentJoint[0];
        currentOrientations.get(i)[1] = chest.childrenJoints.get(2)[1] - chest.parentJoint[1];
        currentOrientations.get(i)[2] = chest.childrenJoints.get(2)[2] - chest.parentJoint[2];
        break;
      case 7:
        chest.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(chest);
        currentOrientations.get(i)[0] = chest.childrenJoints.get(1)[0] - chest.childrenJoints.get(0)[0];
        currentOrientations.get(i)[1] = chest.childrenJoints.get(1)[1] - chest.childrenJoints.get(0)[1];
        currentOrientations.get(i)[2] = chest.childrenJoints.get(1)[2] - chest.childrenJoints.get(0)[2];
        break;
      case 8:
        rightUpperarm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightUpperarm);
        currentOrientations.get(i)[0] = rightUpperarm.childrenJoints.get(0)[0] - rightUpperarm.parentJoint[0];
        currentOrientations.get(i)[1] = rightUpperarm.childrenJoints.get(0)[1] - rightUpperarm.parentJoint[1];
        currentOrientations.get(i)[2] = rightUpperarm.childrenJoints.get(0)[2] - rightUpperarm.parentJoint[2];
        break;
      case 9:
        rightArm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(rightArm);
        currentOrientations.get(i)[0] = rightArm.childrenJoints.get(0)[0] - rightArm.parentJoint[0];
        currentOrientations.get(i)[1] = rightArm.childrenJoints.get(0)[1] - rightArm.parentJoint[1];
        currentOrientations.get(i)[2] = rightArm.childrenJoints.get(0)[2] - rightArm.parentJoint[2];
        break;
      case 10:
        rightHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        leftHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * (-axis[0]), sin(theta / 2) * axis[1], sin(theta / 2) * (-axis[2])));
        translate(rightHand);
        currentOrientations.get(i)[0] = rightHand.childrenJoints.get(0)[0] - rightHand.parentJoint[0];
        currentOrientations.get(i)[1] = rightHand.childrenJoints.get(0)[1] - rightHand.parentJoint[1];
        currentOrientations.get(i)[2] = rightHand.childrenJoints.get(0)[2] - rightHand.parentJoint[2];
        break;
      case 11:
        staff.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        rightHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        leftHand.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * (-axis[0]), sin(theta / 2) * axis[1], sin(theta / 2) * (-axis[2])));
        translate(rightHand);
        currentOrientations.get(i-1)[0] = rightHand.childrenJoints.get(0)[0] - rightHand.parentJoint[0];
        currentOrientations.get(i-1)[1] = rightHand.childrenJoints.get(0)[1] - rightHand.parentJoint[1];
        currentOrientations.get(i-1)[2] = rightHand.childrenJoints.get(0)[2] - rightHand.parentJoint[2];
        currentOrientations.get(i)[0] = staff.childrenJoints.get(0)[0] - staff.parentJoint[0];
        currentOrientations.get(i)[1] = staff.childrenJoints.get(0)[1] - staff.parentJoint[1];
        currentOrientations.get(i)[2] = staff.childrenJoints.get(0)[2] - staff.parentJoint[2];
        break;
      case 12:
        leftUpperarm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftUpperarm);
        currentOrientations.get(i)[0] = leftUpperarm.childrenJoints.get(0)[0] - leftUpperarm.parentJoint[0];
        currentOrientations.get(i)[1] = leftUpperarm.childrenJoints.get(0)[1] - leftUpperarm.parentJoint[1];
        currentOrientations.get(i)[2] = leftUpperarm.childrenJoints.get(0)[2] - leftUpperarm.parentJoint[2];
        break;
      case 13:
        leftArm.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(leftArm);
        currentOrientations.get(i)[0] = leftArm.childrenJoints.get(0)[0] - leftArm.parentJoint[0];
        currentOrientations.get(i)[1] = leftArm.childrenJoints.get(0)[1] - leftArm.parentJoint[1];
        currentOrientations.get(i)[2] = leftArm.childrenJoints.get(0)[2] - leftArm.parentJoint[2];
        break;
      case 14:
        neck.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(neck);
        currentOrientations.get(i)[0] = neck.childrenJoints.get(0)[0] - neck.parentJoint[0];
        currentOrientations.get(i)[1] = neck.childrenJoints.get(0)[1] - neck.parentJoint[1];
        currentOrientations.get(i)[2] = neck.childrenJoints.get(0)[2] - neck.parentJoint[2];
        break;
      case 15:
        head.rotate(new Quaternion(cos(theta / 2), sin(theta / 2) * axis[0], sin(theta / 2) * axis[1], sin(theta / 2) * axis[2]));
        translate(head);
        currentOrientations.get(i)[0] = head.childrenJoints.get(0)[0] - head.parentJoint[0];
        currentOrientations.get(i)[1] = head.childrenJoints.get(0)[1] - head.parentJoint[1];
        currentOrientations.get(i)[2] = head.childrenJoints.get(0)[2] - head.parentJoint[2];
        break;
      }
    }
  }
}


/**
 * This function performs cross production of two vectors and returns the result.
 *
 * @param v1 - the first vector
 * @param v2 - the second vector
 * @return v1 X v2
 */
public float[] crossProduct(float[] v1, float[]v2) {
  return new float[]{v1[1] * v2[2] - v2[1] * v1[2], v1[2] * v2[0] - v2[2] * v1[0], v1[0] * v2[1] - v2[0] * v1[1]};
}

/**
 * This function performs dot production of two vectors and returns the rotating angle.
 *
 * @param v1 - the first vector
 * @param v2 - the second vector
 * @return acos(normalized(v1).normalized(v2))
 */
public float dotProduct(float[] v1, float[]v2) {
  v1 = normalizeVector(v1);
  v2 = normalizeVector(v2);
  return acos(v1[0] * v2[0] + v1[1] * v2[1] + v1[2] * v2[2]);
}

/**
 * This function performs normalizing a vector and returns the result.
 *
 * @param vector - the vector to be normalized
 * @return the normalized vector
 */
public float[] normalizeVector(float[] vector) {
  float rootSumSquare;
  rootSumSquare = sqrt(vector[0] * vector[0] + vector[1] * vector[1] + vector[2] * vector[2]);
  return new float[]{vector[0] / rootSumSquare, vector[1] / rootSumSquare, vector[2] / rootSumSquare};
}

/**
 * This function performs translation of parts of Emil recursively. (from a parent parts to all its children)
 *
 * @param current - the current part to be translated
 */
public void translate(Part current) {
  float[] f = new float[3];
  for (int i = 0; i < current.children.size(); i++) {
    println();
    f[0] = current.childrenJoints.get(i)[0] - current.children.get(i).parentJoint[0];
    f[1] = current.childrenJoints.get(i)[1] - current.children.get(i).parentJoint[1];
    f[2] = current.childrenJoints.get(i)[2] - current.children.get(i).parentJoint[2];
    if (f[0] != 0.0 || f[1] != 0.0 || f[2] != 0.0) {
      current.children.get(i).translate(f);
    }
  }
}

/**
 * This function draws Emil at the canvas recursively from the root part to every leaf part
 *
 * @param current - the current part to be drawn
 */
public void drawEmil(Part current) {
  strokeWeight(0.5);
  stroke(0);
  // all y positions are multiplied by -1 because y down is position in my world coordination
  for (int i = 0; i < current.vertices.size(); i++) {
    fill(current.colors.get(i)[0], current.colors.get(i)[1], current.colors.get(i)[2]);
    beginShape(QUADS);
    for (float[] f : current.vertices.get(i)) {
      vertex(f[0], -f[1], f[2]);
    }
    endShape();
  }
  strokeWeight(0.2);
  if (!current.name.equals("head")) {
    sphereDetail(6);
    for (float[] f : current.spheres) {
      fill(f[4], f[5], f[6]);
      stroke(f[4]-30, f[5]-30, f[6]-30);
      translate(f[0], -f[1], f[2]);
      sphere(f[3]);
      translate(-f[0], f[1], -f[2]);
    }
  } else {
    sphereDetail(30);
    for (float[] f : current.spheres) {
      translate(f[0], -f[1], f[2]);
      shape(shape);
      translate(-f[0], f[1], -f[2]);
    }
  }

  // draw current part's children
  for (Part p : current.children) {
    drawEmil(p);
  }
}
