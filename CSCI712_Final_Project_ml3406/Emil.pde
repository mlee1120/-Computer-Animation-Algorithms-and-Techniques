/**
 * This file illustates Final Project - Emil.pde.
 * Functions that generate parts of emil (vertices) are all in this file.
 *
 * @author Michael Lee, ml3406@rit.edu
 */

/**
 * This function generates the head of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the head
 */
public Part head(String name) {
  Part head = new Part(name);
  head.vertices.add(new ArrayList());
  head.colors.add(new int[]{100, 100, 100});
  head.spheres.add(new float[]{0, 45, 0, 42, 100, 100, 100});
  return head;
}


/**
 * This function generates the neck of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the neck
 */
public Part neck(String name) {
  Part neck = new Part(name);
  neck.vertices.add(new ArrayList());

  for (int i = 0; i < 3; i++) {
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i-2.5, 4*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i+2.5, 4*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i+2.5, -4*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i-2.5, -4*sqrt(3.0)});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i-2.5, -4*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i+2.5, -4*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i+2.5, 4*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{0, 6*i-2.5, 4*sqrt(3.0)});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{14*2/3.0, 6*i, 0});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i+2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});

    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, 2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-6*2/3.0, 6*i-2.5, -2*sqrt(3.0)});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});
    neck.vertices.get(neck.vertices.size() - 1).add(new float[]{-14*2/3.0, 6*i, 0});
  }

  neck.colors.add(new int[]{72, 72, 72});

  return neck;
}

/**
 * This function generates the right hand of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the right hand
 */
public Part righthand(String name) {
  Part righthand = new Part(name);
  righthand.vertices.add(new ArrayList());
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, -2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, -2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, -2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, -2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2+5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2+5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2+5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, -2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, -2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-5, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-5, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, -2-5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, -2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, 2});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, -2-5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, -2});


  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2+5, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), 2-10, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-10*sqrt(2.0), -2-10, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2-10, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2-10, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});

  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), -2, 5*sqrt(2.0)});
  righthand.vertices.get(righthand.vertices.size() - 1).add(new float[]{-5*sqrt(2.0), 2, 5*sqrt(2.0)});

  righthand.colors.add(new int[]{100, 100, 100});

  righthand.spheres.add(new float[]{0, 0, 0, 3.5, 72, 72, 72});

  return righthand;
}

/**
 * This function generates the left hand of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the left hand
 */
public Part lefthand(String name) {
  Part lefthand = new Part(name);
  lefthand.vertices.add(new ArrayList());
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, -2, -2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, -2, 2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, 2, 2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{19.5, 2, -2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, -2, -2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, -2, 2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, 2, 2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29.5, 2, -2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, -2, -2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, -2, 2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, 2, 2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{30.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{39.5, 2, -2});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{40.5, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{50, 0, 0});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, -2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, 2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, 2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, -2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, -2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, 2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, 2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, -2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, -2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, 2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, 2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, -2-5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, 2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, -2-5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, -5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, -2, -2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, -2, 2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, 2, 2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{12, 2, -2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, -2, -2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, -2, 2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, 2, 2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{13, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{20, 2, -2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, -2, -2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, -2, 2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, 2, 2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{21, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{28, 2, -2-10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, -2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, 2, 2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, 2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{29, -2, -2-10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{38.5, 0, -10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, -2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, 2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, 2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16.5, 2, -2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, -2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, 2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, 2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{17.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26.5, 2, -2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, -2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, 2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, 2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{27.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{36.5, 2, -2+5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, 2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, 2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{37.5, -2, -2+5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{47, 0, 5});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, -2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, -2, -2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, 2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, -2, 2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, 2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, 2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, 2, 2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, 2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{0, -2, -2});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, -2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{15, 2, -2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, -2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, -2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, -2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, -2, -2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, -2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, 2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, 2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, -2, 2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, 2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, 2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, 2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, 2, 2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, 2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{16, -2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, -2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{25, 2, -2+10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, -2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, -2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, -2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, 2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, 2, 2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, 2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});

  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, 2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{26, -2, -2+10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});
  lefthand.vertices.get(lefthand.vertices.size() - 1).add(new float[]{34, 0, 10});

  lefthand.colors.add(new int[]{100, 100, 100});

  lefthand.spheres.add(new float[]{0, 0, 0, 3.5, 72, 72, 72});

  return lefthand;
}

/**
 * This function generates the left/right arm of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the left/right arm
 */
public Part arm(String name) {
  Part arm = new Part(name);
  float rl;
  if (arm.name.equals("rightArm")) rl = 1.0;
  else rl = -1.0;

  arm.vertices.add(new ArrayList());
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3+4.5/2*sqrt(3.0), 4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3+4.5/2*sqrt(3.0), -4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5+3.0/2*sqrt(3.0), -3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5+3.0/2*sqrt(3.0), 3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3+4.5/2*sqrt(3.0), -4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3, -4.5});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5, -3.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5+3.0/2*sqrt(3.0), -3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3, -4.5});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3-4.5/2*sqrt(3.0), -4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5-3.0/2*sqrt(3.0), -3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5, -3.0});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3-4.5/2*sqrt(3.0), -4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3-4.5/2*sqrt(3.0), 4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5-3.0/2*sqrt(3.0), 3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5-3.0/2*sqrt(3.0), -3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3-4.5/2*sqrt(3.0), 4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3, 4.5});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5, 3.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5-3.0/2*sqrt(3.0), 3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3, 4.5});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, -3+4.5/2*sqrt(3.0), 4.5/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5+3.0/2*sqrt(3.0), 3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, -1.5, 3.0});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4+2.0/2*sqrt(3.0), 2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4+2.0/2*sqrt(3.0), -2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5+3.0/2*sqrt(3.0), -3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5+3.0/2*sqrt(3.0), 3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4+2.0/2*sqrt(3.0), -2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4, -2.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5, -3.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5+3.0/2*sqrt(3.0), -3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4, -2.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4-2.0/2*sqrt(3.0), -2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, +1.5-3.0/2*sqrt(3.0), -3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, +1.5, -3.0});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4-2.0/2*sqrt(3.0), -2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4-2.0/2*sqrt(3.0), 2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5-3.0/2*sqrt(3.0), 3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5-3.0/2*sqrt(3.0), -3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4-2.0/2*sqrt(3.0), 2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4, 2.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5, 3.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5-3.0/2*sqrt(3.0), 3.0/2});

  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4, 2.0});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{0, 4+2.0/2*sqrt(3.0), 2.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5+3.0/2*sqrt(3.0), 3.0/2});
  arm.vertices.get(arm.vertices.size() - 1).add(new float[]{-75*rl, 1.5, 3.0});

  arm.colors.add(new int[]{100, 100, 100});

  arm.spheres.add(new float[]{0, -3, 0, 6.5, 72, 72, 72});
  arm.spheres.add(new float[]{-4.5*rl, 4.5, 0, 5.5, 72, 72, 72});
  arm.spheres.add(new float[]{-75*rl, 0, 0, 6, 72, 72, 72});

  return arm;
}

/**
 * This function generates the left/right upper arm of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the left/right upper arm
 */
public Part upperarm(String name) {
  Part upperarm = new Part(name);
  float rl;
  if (upperarm.name.equals("rightUpperarm")) rl = 1.0;
  else rl = -1.0;

  upperarm.vertices.add(new ArrayList());
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, -5.0/2*sqrt(3.0), 5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, -5.0/2*sqrt(3.0), -5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), -4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), 4.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, -5.0/2*sqrt(3.0), -5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 0, -5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, -4.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), -4.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 0, -5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 5.0/2*sqrt(3.0), -5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), -4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, -4.5});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 5.0/2*sqrt(3.0), -5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 5.0/2*sqrt(3.0), 5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), 4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), -4.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 5.0/2*sqrt(3.0), 5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 0, 5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, 4.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), 4.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, 0, 5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{0, -5.0/2*sqrt(3.0), 5.0/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), 4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, 4.5});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), 4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), -4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, -5.5/2*sqrt(3.0), -5.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, -5.5/2*sqrt(3.0), 5.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), -4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, -4.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 0, -5.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, -5.5/2*sqrt(3.0), -5.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, -4.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), -4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 5.5/2*sqrt(3.0), -5.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 0, -5.5});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), -4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), 4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 5.5/2*sqrt(3.0), 5.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 5.5/2*sqrt(3.0), -5.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 4.5/2*sqrt(3.0), 4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, 4.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 0, 5.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 5.5/2*sqrt(3.0), 5.5/2});

  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, 0, 4.5});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-42*rl, -4.5/2*sqrt(3.0), 4.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, -5.5/2*sqrt(3.0), 5.5/2});
  upperarm.vertices.get(upperarm.vertices.size() - 1).add(new float[]{-84*rl, 0, 5.5});

  upperarm.colors.add(new int[]{100, 100, 100});

  upperarm.spheres.add(new float[]{0, 0, 0, 7.5, 72, 72, 72});
  upperarm.spheres.add(new float[]{-84*rl, 3, 0, 6, 72, 72, 72});
  upperarm.spheres.add(new float[]{-84*rl, -3, 0, 6, 72, 72, 72});

  return upperarm;
}

/**
 * This is a helper function of chest() that stores the vertices of shoulders.
 */
public void shoulder(ArrayList<ArrayList<float[]>> list) {
  // left shoulder
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2*9/10, 6*16-1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2*9/10, 6*16-1.5, 1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2*9/10, 6*16-1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2*9/10, 6*16+1.5, 1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*16+1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*16+1.5, -1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});

  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});

  // right shoulder
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5-25.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15-1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*15+1.5+2, 25});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, -1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15-1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*15+1.5, 1.5+75.0/2});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*15, 30});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2*9/10, 6*16-1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2*9/10, 6*16-1.5, 1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2*9/10, 6*16-1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2*9/10, 6*16+1.5, 1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*16+1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*16+1.5, -1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5-25.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5-25.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 0});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10+1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16-1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10-1.5, 6*16+1.5-5, 25.0*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, -1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});

  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16-1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{-25.0*sqrt(2)*9/10/2, 6*16+1.5, 1.5+75.0/2*9/10});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
  list.get(list.size() - 1).add(new float[]{0, 6*16, 30});
}

/**
 * This function generates the chest of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the chest
 */
public Part chest(String name) {
  Part chest = new Part(name);
  chest.vertices.add(new ArrayList());
  for (int i = 0; i < 17; i++) {
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i-2.5, 4*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i+2.5, 4*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i+2.5, -4*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i-2.5, -4*sqrt(3.0)});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i-2.5, -4*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i+2.5, -4*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i+2.5, 4*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*i-2.5, 4*sqrt(3.0)});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});

    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
  }

  chest.vertices.add(new ArrayList());
  shoulder(chest.vertices);

  //left rib
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  // rib 2
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  // rib 3
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  // rib 4
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  // rib 5
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  // rib 6
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14-1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14+1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14+1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14-1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6-1.5-1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6+1.5-1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  //right rib
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5-25.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16+1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9-1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16-1.5, 6*9+1.5+4.5, 25.0*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, -1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9-1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*14/16/2, 6*9+1.5, 1.5+75.0/2*14/16});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*9, 30});

  // rib 2
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5-25.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18+1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10-1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18-1.5, 6*10+1.5+4, 25.0*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, -1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10-1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*17/18/2, 6*10+1.5, 1.5+75.0/2*17/18});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*10, 30});

  // rib 3
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5-25.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20+1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11-1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20-1.5, 6*11+1.5+3, 25.0*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, -1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11-1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*19/20/2, 6*11+1.5, 1.5+75.0/2*19/20});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*11, 30});

  // rib 4
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*12+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*12+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*12, 30});

  // rib 5
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5-25.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)+1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13-1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)-1.5, 6*13+1.5+3, 25});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, -1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13-1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)/2, 6*13+1.5, 1.5+75.0/2});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*13, 30});

  // rib 6
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5-25.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14-1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14+1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14+1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14-1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5, 6*14+1.5, 0});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14-1.5, 25.0*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6+1.5+1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14-1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6-1.5+1.5, 6*14+1.5, 25.0*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, -1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14-1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-25.0*sqrt(2)*5/6/2, 6*14+1.5, 1.5+75.0/2*5/6});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 6*14, 30});

  // chest
  chest.vertices.add(new ArrayList());
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 96, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-9, 66, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, 5+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 96, 3+30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 96, -3+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, -5+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-9, 66, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-6, 96, 0+30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 96, 3+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, 5+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{9, 66, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 96, 0+30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{6, 96, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{9, 66, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, -5+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 96, -3+30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-9, 66, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-3, 48, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 48, 3+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, 5+30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, -5+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 48, -3+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-3, 48, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{-9, 66, 0+30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, 5+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 48, 3+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{3, 48, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{9, 66, 0+30});

  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{9, 66, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{3, 48, 0+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 48, -3+30});
  chest.vertices.get(chest.vertices.size() - 1).add(new float[]{0, 66, -5+30});

  chest.colors.add(new int[]{75, 75, 75});
  chest.colors.add(new int[]{100, 100, 100});
  chest.colors.add(new int[]{75, 75, 75});

  return chest;
}

/**
 * This function generates the lumbar of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the lumbar
 */
public Part lumbar(String name) {
  Part lumbar = new Part(name);
  lumbar.vertices.add(new ArrayList());
  for (int i = 0; i < 9; i++) {
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i-2.5, 4*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i+2.5, 4*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i+2.5, -4*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i-2.5, -4*sqrt(3.0)});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i-2.5, -4*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i+2.5, -4*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i+2.5, 4*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{0, 6*i-2.5, 4*sqrt(3.0)});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{6, 6*i-2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{14, 6*i, 0});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i+2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});

    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, 2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-6, 6*i-2.5, -2*sqrt(3.0)});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
    lumbar.vertices.get(lumbar.vertices.size() - 1).add(new float[]{-14, 6*i, 0});
  }

  lumbar.colors.add(new int[]{75, 75, 75});

  return lumbar;
}

/**
 * This function generates the left/right foot of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the left/right foot
 */
public Part foot(String name) {
  Part foot = new Part(name);
  float rl;
  if (foot.name.equals("rightFoot")) rl = 1.0;
  else rl = -1.0;

  foot.vertices.add(new ArrayList());
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 0});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 0});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 30});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 30});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 55});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, 1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 55});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+10)*rl, -1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 55});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, -1.5, 55});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{10*rl, 0, 70});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+10)*rl, 1.5, 55});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 52});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, 1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 52});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5+5)*rl, -1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 52});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, -1.5, 52});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{5*rl, 0, 67});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5+5)*rl, 1.5, 52});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 49});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, 1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 49});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{1.5*rl, -1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 49});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, -1.5, 49});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{0, 0, 64});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-1.5*rl, 1.5, 49});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 46});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, 1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 46});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-5)*rl, -1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 46});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, -1.5, 46});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-5*rl, 0, 61});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-5)*rl, 1.5, 46});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 43});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, 1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 43});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(1.5-10)*rl, -1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 43});

  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, -1.5, 43});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{-10*rl, 0, 58});
  foot.vertices.get(foot.vertices.size() - 1).add(new float[]{(-1.5-10)*rl, 1.5, 43});


  foot.colors.add(new int[]{100, 100, 100});

  foot.spheres.add(new float[]{0, 0, 0, 6, 72, 72, 72});
  foot.spheres.add(new float[]{-10*rl, 0, 30, 3, 72, 72, 72});
  foot.spheres.add(new float[]{-5*rl, 0, 30, 3, 72, 72, 72});
  foot.spheres.add(new float[]{0, 0, 30, 3, 72, 72, 72});
  foot.spheres.add(new float[]{5*rl, 0, 30, 3, 72, 72, 72});
  foot.spheres.add(new float[]{10*rl, 0, 30, 3, 72, 72, 72});
  foot.spheres.add(new float[]{-10*rl, 0, 43, 3, 72, 72, 72});
  foot.spheres.add(new float[]{-5*rl, 0, 46, 3, 72, 72, 72});
  foot.spheres.add(new float[]{0, 0, 49, 3, 72, 72, 72});
  foot.spheres.add(new float[]{5*rl, 0, 52, 3, 72, 72, 72});
  foot.spheres.add(new float[]{10*rl, 0, 55, 3, 72, 72, 72});

  return foot;
}

/**
 * This function generates the left/right leg of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the left/right leg
 */
public Part leg(String name) {
  Part leg = new Part(name);
  float rl;
  if (leg.name.equals("rightLeg")) rl = 1.0;
  else rl = -1.0;

  leg.vertices.add(new ArrayList());
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, 0, 5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{ 4.0/2*rl, -46, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{ 5.0/2*rl, 0, 5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0/2*rl, 0, 5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0/2*rl, -46, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0*rl, -46, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0*rl, 0, 0});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0*rl, 0, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0*rl, -46, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0/2*rl, -46, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0/2*rl, 0, -5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0/2*rl, 0, -5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0/2*rl, -46, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, 0, -5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, 0, -5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0*rl, -46, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0*rl, 0, 0});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0*rl, 0, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0*rl, -46, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, 0, 5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, 5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, -93, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{ 5.0/2*rl, -93, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{ 4.0/2*rl, -46, 5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0/2*rl, -46, 5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0/2*rl, -93, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0*rl, -93, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0*rl, -46, 0});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0*rl, -46, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0*rl, -93, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0/2*rl, -93, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0/2*rl, -46, -5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{4.0/2*rl, -46, -5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{5.0/2*rl, -93, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, -93, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, -5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, -5.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, -93, -4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0*rl, -93, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0*rl, -46, 0});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0*rl, -46, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0*rl, -93, 0});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-5.0/2*rl, -93, 4.0*sqrt(3)/2});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{-4.0/2*rl, -46, 5.0*sqrt(3)/2});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9-1.5)*rl, -3, 1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6-1.5)*rl, -99, 1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6+1.5)*rl, -99, 1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9+1.5)*rl, -3, 1.5});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9+1.5)*rl, -3, 1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6+1.5)*rl, -99, 1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6+1.5)*rl, -99, -1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9+1.5)*rl, -3, -1.5});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9+1.5)*rl, -3, -1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6+1.5)*rl, -99, -1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6-1.5)*rl, -99, -1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9-1.5)*rl, -3, -1.5});

  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9-1.5)*rl, -3, -1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6-1.5)*rl, -99, -1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-6-1.5)*rl, -99, 1.5});
  leg.vertices.get(leg.vertices.size() - 1).add(new float[]{(-9-1.5)*rl, -3, 1.5});

  leg.colors.add(new int[]{100, 100, 100});

  leg.spheres.add(new float[]{0*rl, 0, 0, 7.5, 72, 72, 72});
  leg.spheres.add(new float[]{0*rl, -93, 0, 6, 72, 72, 72});
  leg.spheres.add(new float[]{-9*rl, -3, 0, 3.5, 72, 72, 72});
  leg.spheres.add(new float[]{-6*rl, -99, 0, 3.5, 72, 72, 72});

  return leg;
}

/**
 * This function generates the left/right thigh of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the left/right thigh
 */
public Part thigh(String name) {
  Part thigh = new Part(name);
  float rl;
  if (thigh.name.equals("rightThigh")) rl = 1.0;
  else rl = -1.0;

  thigh.vertices.add(new ArrayList());
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10-5.0/2)*rl, -6, 6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10+5.0/2)*rl, -6, 6*sqrt(3.0)/2});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10+5.0/2)*rl, -6, 6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0)*rl, -33, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10+5.0)*rl, -6, 0});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10+5.0)*rl, -6, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0)*rl, -33, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10+5.0/2)*rl, -6, -6*sqrt(3.0)/2});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10+5.0/2)*rl, -6, -6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10-5.0/2)*rl, -6, -6*sqrt(3.0)/2});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10-5.0/2)*rl, -6, -6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0)*rl, -33, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10-5.0)*rl, -6, 0});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10-5.0)*rl, -6, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0)*rl, -33, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-10-5.0/2)*rl, -6, 6*sqrt(3.0)/2});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, 6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6/2)*rl, -99, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(+6/2)*rl, -99, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, 6*sqrt(3.0)/2});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, 6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(+6/2)*rl, -99, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(+6)*rl, -99, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0)*rl, -33, 0});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0)*rl, -33, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(+6)*rl, -99, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(+6/2)*rl, -99, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, -6*sqrt(3.0)/2});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6+4.0/2)*rl, -33, -6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(+6/2)*rl, -99, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6/2)*rl, -99, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, -6*sqrt(3.0)/2});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, -6*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6/2)*rl, -99, -5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6)*rl, -99, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0)*rl, -33, 0});

  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0)*rl, -33, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6)*rl, -99, 0});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6/2)*rl, -99, 5*sqrt(3.0)/2});
  thigh.vertices.get(thigh.vertices.size() - 1).add(new float[]{(-6-4.0/2)*rl, -33, 6*sqrt(3.0)/2});

  thigh.colors.add(new int[]{100, 100, 100});

  thigh.spheres.add(new float[]{0*rl, 0, 0, 6, 72, 72, 72});
  thigh.spheres.add(new float[]{-10*rl, -6, 0, 7.5, 72, 72, 72});
  thigh.spheres.add(new float[]{+3*rl, -99, 0, 6, 72, 72, 72});
  thigh.spheres.add(new float[]{-3*rl, -99, 0, 6, 72, 72, 72});

  return thigh;
}

/**
 * This function generates the pelvic of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the pelvic
 */
public Part pelvic(String name) {
  Part pelvic = new Part(name);
  pelvic.vertices.add(new ArrayList());

  // left
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, 5, 3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, 7.5, 3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, -5, 5.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -5, 3});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, 5, -3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, 7.5, -3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, -5, -0.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -5, -3});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, 7.5, 3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, 10, 5.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, -5, 8});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, -5, 5.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, 7.5, -3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, 10, -0.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, -5, 2});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-2.5, -5, -0.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, 10, 5.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-7.5, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, -5.5, 6.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, -5, 8});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, 10, -0.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-10, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-8.5, -5.5, 6.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, -5, 2});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-7.5, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-10, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, -5.5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, -5.5, 6.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-10, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-13, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-8, -5.5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-8.5, -5.5, 6.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-10, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, 0, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -9, 10});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-5, -5.5, 7});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-10, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-9, -18, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, -20, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, 0, 11});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, 0, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -4, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-1, -11, 12});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -9, 10});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, 0, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-6, -20, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -20, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -4, 14});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -4, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -12, 17});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -12, 13});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-1, -11, 12});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -4, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{-3, -20, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -18, 17});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -12, 17});

  // right
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, 5, 3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, 7.5, 3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, -5, 5.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -5, 3});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, 5, -3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, 7.5, -3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, -5, -0.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -5, -3});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, 7.5, 3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, 10, 5.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, -5, 8});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, -5, 5.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, 7.5, -3});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, 10, -0.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, -5, 2});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{2.5, -5, -0.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, 10, 5.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{7.5, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, -5.5, 6.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, -5, 8});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, 10, -0.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{10, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{8.5, -5.5, 6.5});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, -5, 2});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{7.5, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{10, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, -5.5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, -5.5, 6.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{10, 7.5, 6});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{13, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{8, -5.5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{8.5, -5.5, 6.5});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{10, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, 0, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -9, 10});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{5, -5.5, 7});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{10, 5, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{9, -18, 7});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, -20, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, 0, 11});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, 0, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -4, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{1, -11, 12});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -9, 10});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, 0, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{6, -20, 11});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -20, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -4, 14});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -4, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -12, 17});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -12, 13});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{1, -11, 12});

  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -4, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{3, -20, 14});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -18, 17});
  pelvic.vertices.get(pelvic.vertices.size() - 1).add(new float[]{0, -12, 17});

  for (ArrayList<float[]> list : pelvic.vertices) {
    for (float[] f : list) {
      f[0] *= 2;
    }
  }

  pelvic.colors.add(new int[]{80, 80, 80});

  return pelvic;
}

/**
 * This function generates the staff of Emil and returns it.
 *
 * @param name - the name of this part
 * @return the staff
 */
public Part staff(String name) {
  float x = 4.5, y = 180;
  Part staff = new Part(name);

  // stick
  staff.vertices.add(new ArrayList());
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x, y, 0});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x, -y, 0});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, -y, -sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, y, -sqrt(3.0)/2*x});

  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, y, -sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, -y, -sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, -y, -sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, y, -sqrt(3.0)/2*x});

  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, y, -sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, -y, -sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x, -y, 0});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x, y, 0});

  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x, y, 0});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x, -y, 0});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, -y, sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, y, sqrt(3.0)/2*x});

  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, y, sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{-x/2, -y, sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, -y, sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, y, sqrt(3.0)/2*x});

  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, y, sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x/2, -y, sqrt(3.0)/2*x});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x, -y, 0});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{x, y, 0});

  // head
  staff.vertices.add(new ArrayList());
  float[] f1 = new float[]{-x/2, y, x};
  float[] f2 = new float[]{-x/2, y-30, x};
  float[] f3 = new float[]{-x/2, y-15, 3*x};
  float[] f4 = new float[]{-x/2, y, 3*x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  float[] f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{x/2, y, 3*x};
  f2 = new float[]{x/2, y-15, 3*x};
  f3 = new float[]{x/2, y-30, x};
  f4 = new float[]{x/2, y, x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{-x/2, y, x};
  f2 = new float[]{-x/2, y, 3*x};
  f3 = new float[]{x/2, y, 3*x};
  f4 = new float[]{x/2, y, x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{-x/2, y-15, 3*x};
  f2 = new float[]{-x/2, y-30, x};
  f3 = new float[]{x/2, y-30, x};
  f4 = new float[]{x/2, y-15, 3*x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{-x/2, y, x};
  f2 = new float[]{-x/2, y, 3*x};
  f3 = new float[]{x/2, y, 3*x};
  f4 = new float[]{x/2, y, x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{-x/2, y, 3*x};
  f2 = new float[]{-x/2, y-15, 3*x};
  f3 = new float[]{-x/2, y-60, 7*x};
  f4 = new float[]{-x/2, y-10, 5.5*x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{x/2, y-10, 5.5*x};
  f2 = new float[]{x/2, y-60, 7*x};
  f3 = new float[]{x/2, y-15, 3*x};
  f4 = new float[]{x/2, y, 3*x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{-x/2, y, 3*x};
  f2 = new float[]{-x/2, y-10, 5.5*x};
  f3 = new float[]{x/2, y-10, 5.5*x};
  f4 = new float[]{x/2, y, 3*x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{-x/2, y-60, 7*x};
  f2 = new float[]{-x/2, y-15, 3*x};
  f3 = new float[]{x/2, y-15, 3*x};
  f4 = new float[]{x/2, y-60, 7*x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  f1 = new float[]{-x/2, y-10, 5.5*x};
  f2 = new float[]{-x/2, y-60, 7*x};
  f3 = new float[]{x/2, y-60, 7*x};
  f4 = new float[]{x/2, y-10, 5.5*x};
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5 = new float[3];
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});
  f5[0] = f1[0] * cos(60.0 * PI / 180) - f1[2] * sin(60.0 * PI / 180);
  f5[1] = f1[1];
  f5[2] = f1[0] * sin(60.0 * PI / 180) + f1[2] * cos(60.0 * PI / 180);
  f1[0] = f5[0];
  f1[1] = f5[1];
  f1[2] = f5[2];

  f5[0] = f2[0] * cos(60.0 * PI / 180) - f2[2] * sin(60.0 * PI / 180);
  f5[1] = f2[1];
  f5[2] = f2[0] * sin(60.0 * PI / 180) + f2[2] * cos(60.0 * PI / 180);
  f2[0] = f5[0];
  f2[1] = f5[1];
  f2[2] = f5[2];

  f5[0] = f3[0] * cos(60.0 * PI / 180) - f3[2] * sin(60.0 * PI / 180);
  f5[1] = f3[1];
  f5[2] = f3[0] * sin(60.0 * PI / 180) + f3[2] * cos(60.0 * PI / 180);
  f3[0] = f5[0];
  f3[1] = f5[1];
  f3[2] = f5[2];

  f5[0] = f4[0] * cos(60.0 * PI / 180) - f4[2] * sin(60.0 * PI / 180);
  f5[1] = f4[1];
  f5[2] = f4[0] * sin(60.0 * PI / 180) + f4[2] * cos(60.0 * PI / 180);
  f4[0] = f5[0];
  f4[1] = f5[1];
  f4[2] = f5[2];
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f1[0], f1[1], f1[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f2[0], f2[1], f2[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f3[0], f3[1], f3[2]});
  staff.vertices.get(staff.vertices.size() - 1).add(new float[]{f4[0], f4[1], f4[2]});

  staff.colors.add(new int[]{72, 45, 36});
  staff.colors.add(new int[]{120, 0, 0});

  staff.spheres.add(new float[]{0, y + 5, 0, 9, 150, 0, 0});
  staff.spheres.add(new float[]{0, -y, 0, 6, 120, 0, 0});

  return staff;
}
