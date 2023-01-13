/**
 * This file illustates Final Project - Part.pde.
 *
 * @author Michael Lee, ml3406@rit.edu
 */

/**
 * a class represents parts of Emil
 */
class Part {
  /** name of this Part */
  public String name;

  /** the joint's position that is connected to the parent Part */
  public float[] parentJoint;

  /** a list of children of this Part */
  public ArrayList<Part> children;

  /** a list of joints' positions that are connected to the children of this Part */
  public ArrayList<float[]> childrenJoints;

  /** all vertices of this Part (diffrent lists => different colors) */
  public ArrayList<ArrayList<float[]>> vertices;

  /** a list to store all colors for different vertices */
  public ArrayList<int[]> colors;

  /** a list of sphere like strutures (position, size, and color) */
  public ArrayList<float[]> spheres;

  /**
   * The contructor initializes all fields.
   */
  public Part(String name) {
    this.name = name;
    parentJoint = new float[]{0.0, 0.0, 0.0};
    childrenJoints = new ArrayList();
    children = new ArrayList();
    vertices = new ArrayList();
    colors = new ArrayList();
    spheres = new ArrayList();
  }

  /**
   * This function performs translation of this Part and all its children.
   *
   * @param translation - the displacement
   */
  public void translate(float[] translation) {
    parentJoint[0] += translation[0];
    parentJoint[1] += translation[1];
    parentJoint[2] += translation[2];

    for (float[] f : childrenJoints) {
      f[0] += translation[0];
      f[1] += translation[1];
      f[2] += translation[2];
    }

    for (ArrayList<float[]> list : vertices) {
      for (float[] f : list) {
        f[0] += translation[0];
        f[1] += translation[1];
        f[2] += translation[2];
      }
    }

    for (float[] f : spheres) {
      f[0] += translation[0];
      f[1] += translation[1];
      f[2] += translation[2];
    }

    for (Part p : children) {
      p.translate(translation);
    }
  }

  /**
   * This function performs rotation of this Part.
   *
   * @param q - the quaternion for rotation
   */
  public void rotate(Quaternion q) {
    Quaternion qp;
    for (float[] f : childrenJoints) {
      qp = new Quaternion(0, f[0] - parentJoint[0], f[1] - parentJoint[1], f[2] - parentJoint[2]);
      qp = q.product(qp).product(q.inverse());
      f[0] = qp.x + parentJoint[0];
      f[1] = qp.y + parentJoint[1];
      f[2] = qp.z + parentJoint[2];
    }

    for (ArrayList<float[]> list : vertices) {
      for (float[] f : list) {
        qp = new Quaternion(0, f[0] - parentJoint[0], f[1] - parentJoint[1], f[2] - parentJoint[2]);
        qp = q.product(qp).product(q.inverse());
        f[0] = qp.x + parentJoint[0];
        f[1] = qp.y + parentJoint[1];
        f[2] = qp.z + parentJoint[2];
      }
    }

    for (float[] f : spheres) {
      qp = new Quaternion(0, f[0] - parentJoint[0], f[1] - parentJoint[1], f[2] - parentJoint[2]);
      qp = q.product(qp).product(q.inverse());
      f[0] = qp.x + parentJoint[0];
      f[1] = qp.y + parentJoint[1];
      f[2] = qp.z + parentJoint[2];
    }
  }
}
