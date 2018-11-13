// code 1 FA18
// bryan ma

// visualizing key presses 2

// see previous sketch w11_05_visualizingInput2 for instructions.

int x;
int y;
boolean newKeyShape = false;
boolean newMouseShape = false;
int numChars = 26;      // There are 26 characters in the alphabet
color[] colors = new color[numChars];

void setup() {
  size(800, 800);
  colorMode(HSB, numChars);
  for (int i = 0; i < numChars; i++) {
    colors[i] = color(i, numChars, numChars);
  }
}

void draw() {
  if (newKeyShape) {
    ellipse(x, y, 100, 100);
    newKeyShape = false;
  }
  if (newMouseShape) {
    rect(x, y, 80, 80);
    newMouseShape = false;
  }
}

void keyPressed() {
  setPosition();
  newKeyShape = true;
  
  if((key >= 'A' && key <= 'Z') || (key >= 'a' && key <= 'z')) {
    int keyIndex;
    if(key <= 'Z') {
      keyIndex = key-'A';
      fill(colors[keyIndex]);
    } else {
      keyIndex = key-'a';
      fill(colors[keyIndex]);
    }
  } else {
    fill(0);
  }
}

void mousePressed() {
  setPosition();
  newMouseShape = true;
  fill(26, 0 , 26);
}

void setPosition() {
  x = int(random(width));
  y = int(random(height));
}
