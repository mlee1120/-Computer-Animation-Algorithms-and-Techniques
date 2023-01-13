/**
 * This file illustates Final Project - action1.pde.
 * motion data of the defending action 
 *
 * @author Michael Lee, ml3406@rit.edu
 */


/** 
 * This function converts all joints' positions to vectors.
 */
public void input1() {
  readVertices1();

  // calculate important vectors among joints
  for (ArrayList<float[]> list : keyframesVertices) {
    keyframesVectors.add(new ArrayList());
    // pelvic right -> pelvic left (for rotating pelvic - root)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(4)[0] - list.get(1)[0], list.get(4)[1] - list.get(1)[1], list.get(4)[2] - list.get(1)[2]});

    // pelvic right -> right knee (for rotating right thigh)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(2)[0] - list.get(1)[0], list.get(2)[1] - list.get(1)[1], list.get(2)[2] - list.get(1)[2]});

    // right knee -> right foot (for rotating right leg)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(3)[0] - list.get(2)[0], list.get(3)[1] - list.get(2)[1], list.get(3)[2] - list.get(2)[2]});

    // pelvic left -> left knee (for rotating left thigh)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(5)[0] - list.get(4)[0], list.get(5)[1] - list.get(4)[1], list.get(5)[2] - list.get(4)[2]});

    // left knee -> left foot (for rotating left leg)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(6)[0] - list.get(5)[0], list.get(6)[1] - list.get(5)[1], list.get(6)[2] - list.get(5)[2]});

    // pelvic center -> lumbar (for rotating lumbar)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(7)[0] - list.get(0)[0], list.get(7)[1] - list.get(0)[1], list.get(7)[2] - list.get(0)[2]});

    // lumbar -> chest (for rotating chest)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(8)[0] - list.get(7)[0], list.get(8)[1] - list.get(7)[1], list.get(8)[2] - list.get(7)[2]});

    // right shoulder -> left shoulder (for rotating chest)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(14)[0] - list.get(9)[0], list.get(14)[1] - list.get(9)[1], list.get(14)[2] - list.get(9)[2]});

    // right shoulder -> right elbow (for rotating right upperarm)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(10)[0] - list.get(9)[0], list.get(10)[1] - list.get(9)[1], list.get(10)[2] - list.get(9)[2]});

    // right elbow -> right wrist (for rotating right arm)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(11)[0] - list.get(10)[0], list.get(11)[1] - list.get(10)[1], list.get(11)[2] - list.get(10)[2]});

    // right wrist -> staff 1 (for rotating staff)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(12)[0] - list.get(11)[0], list.get(12)[1] - list.get(11)[1], list.get(12)[2] - list.get(11)[2]});

    // staff 1 -> staff 2 (for rotating staff and right hand)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(13)[0] - list.get(12)[0], list.get(13)[1] - list.get(12)[1], list.get(13)[2] - list.get(12)[2]});

    // left shoulder -> left elbow (for rotating left upperarm)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(15)[0] - list.get(14)[0], list.get(15)[1] - list.get(14)[1], list.get(15)[2] - list.get(14)[2]});

    // left elbow -> left wrist (for rotating left arm)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(16)[0] - list.get(15)[0], list.get(16)[1] - list.get(15)[1], list.get(16)[2] - list.get(15)[2]});

    // chest -> neck (for rotating neck)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(17)[0] - list.get(8)[0], list.get(17)[1] - list.get(8)[1], list.get(17)[2] - list.get(8)[2]});

    // neck -> head (for rotating head)
    keyframesVectors.get(keyframesVectors.size()-1).add(new float[]{list.get(18)[0] - list.get(17)[0], list.get(18)[1] - list.get(17)[1], list.get(18)[2] - list.get(17)[2]});
  }

  // normalize all vectors
  float[] temp;
  for (ArrayList<float[]> list : keyframesVectors) {
    for (float[] f : list) {
      temp = normalizeVector(f);
      f[0] = temp[0];
      f[1] = temp[1];
      f[2] = temp[2];
    }
  }

  // record initial vectors
  for (float[] f : keyframesVectors.get(0)) {
    currentOrientations.add(new float[]{f[0], f[1], f[2]});
  }
  
  // record initial root position
  currentRootPosition[0] = keyframesVertices.get(0).get(0)[0];
  currentRootPosition[1] = keyframesVertices.get(0).get(0)[1];
  currentRootPosition[2] = keyframesVertices.get(0).get(0)[2];

  // calculate total frame number of this action
  totalFrame = (keyframesVectors.size() - 1) * 15;
  
  // for root translation
  scale = 0.5;
  
  // frame rate of this action
  frameRate(45.0);
}

/**
 * This function stores motion data of defending action to the corresponding data structure.
 * could make it a reader (I hard-coded for convenience)
 */
public void readVertices1() {
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{378, -606, 176}); // pelvic
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{325, -622, 176}); // right hip
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{325, -800, 176}); // right knee
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{325, -956, 176}); // right foot
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -622, 176}); // left hip
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -800, 176}); // left knee
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -956, 176}); // left foot
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{378, -528, 176}); // lumbar
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{378, -340, 176}); // chest
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{295, -340, 176}); // right shoulder
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{188, -340, 176}); // right elbow
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{56, -340, 176});  // right wrist
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{26, -340, 176});  // staff center
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{26, -262, 176});  // staff head
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{461, -340, 176}); // left shoulder
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{568, -340, 176}); // left elbow
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{700, -340, 176}); // left wrist
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{378, -300, 176}); // neck
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{378, -246, 176}); // head
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{376, -609, 199});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -621, 204});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{325, -804, 226});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{323, -959, 173});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{421, -622, 204});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{427, -802, 224});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{422, -951, 186});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{373, -521, 199});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -353, 175});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{290, -360, 151});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{204, -431, 160});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{115, -502, 158});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{85, -528, 173});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{34, -495, 247});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{459, -358, 155});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{543, -419, 214});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{645, -485, 257});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -303, 188});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -254, 199});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{373, -612, 209});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -616, 211});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{326, -794, 227});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{323, -957, 178});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{421, -624, 213});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{427, -807, 226});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{422, -952, 189});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{374, -526, 208});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -356, 183});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{288, -366, 170});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{274, -482, 176});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{252, -599, 181});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{255, -637, 194});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{226, -668, 300});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{455, -356, 168});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{460, -487, 180});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{475, -597, 180});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{373, -302, 194});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{373, -252, 204});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{376, -614, 214});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{333, -621, 213});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{326, -796, 226});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{323, -956, 173});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{419, -625, 211});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{424, -791, 231});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{422, -952, 196});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{378, -510, 214});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{376, -353, 189});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{288, -360, 175});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{280, -483, 189});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{267, -601, 206});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{272, -630, 214});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{265, -663, 323});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{457, -355, 176});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{467, -485, 190});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{480, -596, 204});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{378, -303, 201});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{376, -249, 211});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{391, -621, 221});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{343, -625, 219});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -807, 234});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{326, -954, 175});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -627, 219});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{432, -797, 234});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{424, -954, 191});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -520, 217});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{388, -351, 201});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -358, 193});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{288, -480, 224});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{272, -591, 255});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{280, -630, 267});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{302, -647, 364});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{470, -353, 196});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{478, -478, 224});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{482, -597, 136});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -303, 211});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{388, -252, 221});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{411, -619, 249});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{366, -629, 255});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{356, -779, 330});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{328, -984, 270});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{452, -639, 237});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -791, 242});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -957, 186});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{411, -526, 244});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{406, -353, 227});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{320, -350, 242});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{315, -383, 373});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{348, -407, 503});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{353, -409, 533});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{475, -391, 553});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{488, -341, 227});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{477, -389, 256});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{421, -401, 472});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{406, -308, 232});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{404, -259, 241});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{396, -675, 383});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{341, -662, 399});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{360, -842, 538});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -1075, 515});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -683, 358});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{462, -870, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -944, 196});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{389, -551, 383});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{373, -371, 369});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{293, -360, 376});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{313, -315, 531});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{322, -242, 673});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -198, 701});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{482, -194, 700});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{450, -348, 374});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{424, -313, 510});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{397, -256, 640});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{373, -331, 361});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -272, 371});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -670, 404});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{345, -672, 432});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -854, 558});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{331, -1071, 511});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{439, -683, 378});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{445, -858, 371});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{414, -946, 193});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -549, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -358, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{285, -353, 427});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{317, -315, 569});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{326, -249, 718});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{350, -206, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{506, -194, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -346, 414});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{426, -320, 554});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{402, -270, 706});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{369, -328, 414});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{372, -275, 429});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -680, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{351, -663, 435});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{368, -852, 558});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{331, -1078, 510});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{444, -688, 374});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{449, -865, 360});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -948, 186});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -559, 409});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -358, 412});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -350, 422});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -310, 561});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{350, -237, 705});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{369, -196, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{533, -165, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{464, -345, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{442, -315, 551});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -259, 693});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -328, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -275, 426});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{399, -637, 406});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{350, -667, 429});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{366, -850, 559});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -1073, 511});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{449, -687, 373});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{449, -853, 366});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{414, -939, 186});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -551, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{393, -356, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{310, -351, 416});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{340, -312, 558});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{358, -229, 698});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{376, -188, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{523, -153, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{468, -350, 419});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{452, -302, 541});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{439, -247, 685});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{393, -327, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -270, 421});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -645, 401});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{351, -660, 427});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{366, -845, 553});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{338, -1075, 511});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -675, 378});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{452, -855, 364});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{421, -938, 186});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{399, -559, 409});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{389, -366, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{303, -350, 419});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -308, 558});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{353, -231, 703});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{373, -189, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{530, -160, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{462, -343, 429});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -313, 548});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{434, -249, 686});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{389, -328, 409});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{389, -269, 422});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{399, -665, 401});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -655, 427});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{364, -854, 556});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{338, -1071, 511});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{442, -680, 369});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{450, -855, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{414, -938, 188});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{397, -556, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -361, 406});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{300, -345, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{333, -313, 561});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{348, -326, 693});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{369, -191, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{525, -170, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{460, -343, 421});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{444, -312, 548});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -252, 690});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -330, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -270, 421});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -652, 402});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{341, -654, 429});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{361, -848, 556});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -1075, 515});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{442, -680, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{444, -850, 360});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -943, 185});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{396, -548, 402});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -355, 406});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{300, -348, 422});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{331, -313, 554});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{350, -241, 696});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -196, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{516, -173, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{457, -346, 419});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -312, 544});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -254, 688});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -327, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -272, 416});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -657, 399});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{340, -658, 431});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{360, -850, 551});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{335, -1075, 508});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -672, 371});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -842, 366});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -944, 181});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{396, -556, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -361, 402});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{303, -356, 422});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -312, 556});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -232, 695});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{368, -193, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{515, -166, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{459, -348, 419});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -310, 546});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{427, -252, 682});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{381, -323, 406});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -270, 419});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{397, -649, 401});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{343, -654, 432});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{361, -850, 553});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -1076, 513});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{444, -675, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{445, -852, 366});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{414, -941, 183});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{396, -545, 406});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -368, 404});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{300, -353, 426});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -312, 558});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -234, 706});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{364, -193, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{520, -156, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{457, -343, 424});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{437, -307, 546});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -242, 685});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -330, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -280, 431});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{393, -647, 406});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{338, -654, 434});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{360, -842, 556});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -1073, 508});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -672, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{445, -848, 358});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -941, 186});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -548, 404});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -355, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{300, -350, 429});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{328, -312, 553});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{345, -234, 703});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{368, -191, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{518, -160, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{455, -343, 435});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{439, -307, 551});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -244, 690});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -333, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{383, -284, 432});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -644, 397});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{341, -652, 427});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{356, -848, 558});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{333, -1070, 511});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{437, -670, 366});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{444, -848, 361});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{419, -939, 184});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -554, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{379, -371, 406});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -351, 422});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{328, -312, 556});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{343, -237, 703});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{363, -198, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{520, -163, 720});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{449, -343, 424});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{435, -310, 551});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -244, 685});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{379, -328, 407});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{381, -284, 431});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{412, -614, 330});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{366, -630, 350});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{348, -835, 457});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -1047, 516});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -642, 297});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{460, -830, 331});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{419, -949, 183});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{411, -528, 318});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{411, -371, 305});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -368, 330});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{295, -331, 465});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{247, -298, 624});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{239, -277, 655});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{348, -170, 632});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{488, -363, 315});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{544, -336, 427});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{587, -287, 549});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{411, -328, 305});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{409, -270, 318});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{404, -589, 242});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{361, -611, 251});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{340, -796, 305});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{330, -929, 206});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -616, 234});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -799, 241});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{417, -952, 180});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{404, -512, 241});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{402, -346, 209});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{318, -356, 201});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{231, -414, 251});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{112, -487, 328});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{90, -503, 360});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{36, -442, 459});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{487, -360, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{577, -421, 274});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{693, -482, 322});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -303, 226});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -246, 237});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{369, -591, 217});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{323, -611, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{320, -814, 219});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{320, -951, 166});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{412, -612, 217});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{421, -807, 221});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -951, 189});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{369, -510, 219});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{366, -343, 199});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{285, -351, 178});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{270, -483, 180});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{254, -627, 173});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{252, -632, 180});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{229, -665, 282});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -351, 184});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{465, -480, 184});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{487, -589, 178});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{369, -303, 206});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{368, -242, 209});
}
