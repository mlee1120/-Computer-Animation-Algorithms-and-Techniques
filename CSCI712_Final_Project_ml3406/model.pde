/**
 * This file illustates Final Project - model.pde.
 * building the model
 *
 * @author Michael Lee, ml3406@rit.edu
 */


/** 
 * This function builds a model of Emil
 */
public void buildModel() {
  // building from the root
  root = pelvic("pelvic");
  rightThigh = thigh("rightThigh");
  root.children.add(rightThigh);
  root.childrenJoints.add(new float[]{-27, -15, 0});

  leftThigh = thigh("leftThigh");
  root.children.add(leftThigh);
  root.childrenJoints.add(new float[]{27, -15, 0});
  lumbar = lumbar("lumbar");
  root.children.add(lumbar);
  root.childrenJoints.add(new float[]{0, 0, 0});

  rightLeg = leg("rightLeg");
  rightThigh.children.add(rightLeg);
  rightThigh.childrenJoints.add(new float[]{0, -111, 0});
  rightFoot = foot("rightFoot");
  rightLeg.children.add(rightFoot);
  rightLeg.childrenJoints.add(new float[]{0, -105, 0});

  leftLeg = leg("leftLeg");
  leftThigh.children.add(leftLeg);
  leftThigh.childrenJoints.add(new float[]{0, -111, 0});
  leftFoot = foot("leftFoot");
  leftLeg.children.add(leftFoot);
  leftLeg.childrenJoints.add(new float[]{0, -105, 0});

  chest = chest("chest");
  lumbar.children.add(chest);
  lumbar.childrenJoints.add(new float[]{0, 48, 0});
  rightUpperarm = upperarm("rightUpperarm");
  chest.children.add(rightUpperarm);
  chest.childrenJoints.add(new float[]{-45, 93, 0});
  leftUpperarm = upperarm("leftUpperarm");
  chest.children.add(leftUpperarm);
  chest.childrenJoints.add(new float[]{45, 93, 0});
  neck = neck("neck");
  chest.children.add(neck);
  chest.childrenJoints.add(new float[]{0, 93, 0});

  rightArm = arm("rightArm");
  rightUpperarm.children.add(rightArm);
  rightUpperarm.childrenJoints.add(new float[]{-93, 0, 0});
  rightHand = righthand("righthand");
  rightArm.children.add(rightHand);
  rightArm.childrenJoints.add(new float[]{-84, 0, 0});
  staff = staff("staff");
  rightHand.children.add(staff);
  rightHand.childrenJoints.add(new float[]{-5*sqrt(2.0), 0, 0});
  staff.childrenJoints.add(new float[]{0, 45, 0});

  leftArm = arm("leftArm");
  leftUpperarm.children.add(leftArm);
  leftUpperarm.childrenJoints.add(new float[]{93, 0, 0});
  leftHand = lefthand("lefthand");
  leftArm.children.add(leftHand);
  leftArm.childrenJoints.add(new float[]{84, 0, 0});

  head = head("head");
  neck.children.add(head);
  neck.childrenJoints.add(new float[]{0, 12, 0});
  head.childrenJoints.add(new float[]{0, 40, 0});
  
  
  head.translate(new float[]{0, 12, 0});
  neck.translate(new float[]{0, 93, 0});
  staff.translate(new float[]{-5*sqrt(2.0), 0, 0});
  rightHand.translate(new float[]{-84, 0, 0});
  rightArm.translate(new float[]{-93, 0, 0});
  rightUpperarm.translate(new float[]{-45, 93, 0});
  leftHand.translate(new float[]{84, 0, 0});
  leftArm.translate(new float[]{93, 0, 0});
  leftUpperarm.translate(new float[]{45, 93, 0});
  chest.translate(new float[]{0, 48, 0});
  rightFoot.translate(new float[]{0, -105, 0});
  rightLeg.translate(new float[]{0, -111, 0});
  rightThigh.translate(new float[]{-27, -15, 0});
  leftFoot.translate(new float[]{0, -105, 0});
  leftLeg.translate(new float[]{0, -111, 0});
  leftThigh.translate(new float[]{27, -15, 0});
  
  noStroke();
  noFill();
  shape = createShape(SPHERE, 42.0);
  shape.setTexture(img); 

  rightFoot.rotate(new Quaternion(cos(30.0/2*PI/180.0), sin(30.0/2*PI/180.0), 0, 0));
  leftFoot.rotate(new Quaternion(cos(30.0/2*PI/180.0), sin(30.0/2*PI/180.0), 0, 0));
  rightFoot.rotate(new Quaternion(cos(-10.0/2*PI/180.0), 0, sin(-10.0/2*PI/180.0), 0));
  leftFoot.rotate(new Quaternion(cos(10.0/2*PI/180.0), 0, sin(10.0/2*PI/180.0), 0));

  leftArm.rotate(new Quaternion(cos(90.0/2*PI/180.0), sin(90.0/2*PI/180.0), 0, 0));
  rightArm.rotate(new Quaternion(cos(90.0/2*PI/180.0), sin(90.0/2*PI/180.0), 0, 0));

  leftHand.rotate(new Quaternion(cos(-90.0/2*PI/180.0), sin(-90.0/2*PI/180.0), 0, 0));
}
