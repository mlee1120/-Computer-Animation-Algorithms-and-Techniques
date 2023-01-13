/**
 * This file illustates Final Project - action2.pde.
 * motion data of the attacking action 
 *
 * @author Michael Lee, ml3406@rit.edu
 */


/** 
 * This function converts all joints' positions to vectors.
 */
public void input2() {
  readVertices2();

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
 * This function stores motion data of attacking action to the corresponding data structure.
 * could make it a reader (I hard-coded for convenience)
 */
public void readVertices2() {
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{390, -564, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -590, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -804, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -952, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{434, -590, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{434, -804, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{434, -952, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{390, -510, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{390, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{312, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{192, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{68, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{28, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{28, -270, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{468, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{588, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{712, -338, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{390, -292, 230});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{390, -232, 230});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{390, -576, 242});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{344, -590, 234});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{348, -798, 242});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{354, -954, 176});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{432, -596, 236});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{436, -798, 240});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{428, -950, 192});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{388, -504, 250});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -338, 220});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -344, 202});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{212, -414, 198});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{114, -496, 164});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{96, -514, 176});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{24, -484, 258});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{476, -340, 212});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{558, -432, 224});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{630, -516, 240});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -292, 228});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -232, 238});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{388, -566, 250});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -588, 240});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{348, -804, 244});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{352, -952, 176});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{432, -596, 240});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{434, -800, 246});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{428, -950, 188});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -510, 250});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -340, 218});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -354, 206});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{278, -472, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{248, -582, 208});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{250, -626, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{210, -666, 320});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{470, -348, 210});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{482, -480, 224});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{504, -590, 210});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -290, 234});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -242, 244});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{390, -570, 247});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -588, 241});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -798, 244});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{352, -952, 176});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{430, -598, 241});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{436, -800, 241});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{430, -948, 188});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{388, -506, 247});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -342, 222});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -356, 204});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{292, -478, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{274, -590, 217});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{286, -634, 221});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{296, -678, 325});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{468, -346, 213});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{478, -480, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{492, -596, 217});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -292, 232});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -237, 244});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{402, -578, 251});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{364, -589, 241});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{353, -787, 249});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{353, -952, 176});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{442, -597, 244});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{439, -796, 249});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{427, -949, 191});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{406, -515, 246});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{407, -338, 208});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{325, -345, 184});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{251, -355, 274});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{300, -290, 355});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{325, -270, 384});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{424, -218, 341});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{487, -350, 199});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{516, -467, 270});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{541, -571, 328});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{406, -302, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{402, -242, 226});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{427, -563, 269});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -587, 267});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{355, -774, 310});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{353, -936, 234});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{459, -604, 262});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{450, -794, 242});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -951, 184});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{424, -497, 269});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -341, 227});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{340, -353, 194});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{254, -277, 194});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -213, 132});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{351, -191, 112});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{434, -209, 74});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{498, -336, 221});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{568, -431, 265});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{660, -520, 274});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{411, -312, 237});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -254, 252});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -576, 262});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{371, -589, 260});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{341, -781, 305});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{297, -957, 246});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -601, 255});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -792, 232});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -949, 183});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{412, -507, 265});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -336, 272});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{310, -360, 279});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{199, -373, 369});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{64, -346, 490});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{28, -341, 540});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{0, -310, 569});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{477, -333, 269});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{531, -442, 262});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{607, -540, 260});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{389, -297, 287});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -236, 305});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -576, 252});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{341, -599, 252});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{322, -799, 300});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{292, -964, 251});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{414, -604, 227});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{432, -786, 229});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{426, -951, 181});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -516, 257});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -350, 257});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{307, -331, 303});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{308, -381, 439});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{416, -369, 473});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -376, 480});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{554, -318, 442});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{455, -351, 227});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{467, -482, 272});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{472, -579, 328});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{388, -298, 265});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -232, 285});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{412, -573, 262});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{364, -589, 260});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{331, -781, 320});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -959, 279});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{440, -606, 254});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{444, -804, 239});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -949, 181});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{414, -518, 262});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{422, -350, 226});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{348, -327, 206});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{310, -214, 257});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{407, -165, 209});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -150, 208});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{485, -170, 140});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{498, -360, 219});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{528, -480, 265});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{556, -583, 305});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{424, -308, 247});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{424, -251, 259});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{406, -601, 356});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{361, -602, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{336, -797, 473});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{285, -1025, 533});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{445, -619, 322});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -825, 303});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{432, -951, 178});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{404, -531, 360});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{384, -356, 353});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{305, -376, 378});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{191, -368, 551});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{166, -282, 597});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{155, -265, 615});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{186, -277, 540});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{473, -341, 355});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{536, -454, 366});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{617, -549, 374});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{376, -303, 356});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{368, -242, 374});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{355, -627, 412});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{307, -652, 437});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{328, -855, 566});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{270, -1086, 541});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{394, -657, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -848, 356});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{429, -943, 189});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{350, -551, 431});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{328, -378, 459});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{239, -365, 540});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{227, -369, 705});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{231, -353, 848});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{232, -343, 887});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{221, -237, 1019});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{397, -371, 393});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{439, -510, 419});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{475, -612, 435});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{310, -322, 482});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -251, 511});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{360, -642, 401});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{300, -650, 426});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{325, -850, 558});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{270, -1088, 543});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{396, -662, 361});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{432, -858, 363});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{431, -941, 191});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{350, -558, 411});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{331, -373, 427});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{239, -355, 497});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{237, -343, 652});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{227, -340, 863});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{222, -333, 919});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{208, -226, 968});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{402, -376, 345});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{447, -516, 348});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{500, -625, 419});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{317, -322, 439});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{308, -251, 464});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{401, -594, 280});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{353, -611, 285});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{326, -809, 376});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{277, -1035, 355});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{434, -625, 255});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{452, -822, 275});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{426, -949, 184});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{393, -520, 282});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{396, -368, 274});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{302, -360, 285});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{222, -353, 368});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{178, -222, 483});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{175, -189, 513});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{193, -84, 495});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{473, -373, 264});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{508, -490, 279});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{559, -602, 287});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{391, -313, 282});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -247, 300});
  keyframesVertices.add(new ArrayList());
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{388, -581, 216});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -601, 194});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{346, -789, 208});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{345, -941, 140});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{426, -604, 208});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{437, -801, 239});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{427, -949, 194});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -516, 221});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -355, 199});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{298, -365, 188});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{287, -480, 201});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{269, -606, 214});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{265, -639, 237});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{252, -566, 303});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{467, -363, 199});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{483, -492, 221});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{502, -597, 232});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -305, 213});
  keyframesVertices.get(keyframesVertices.size()-1).add(new float[]{386, -246, 224});
}
