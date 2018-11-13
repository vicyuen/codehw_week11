// code 1 FA 18
// bryan ma

// typing words 2

// see previous sketch for instructions.

String letters = "";
//Word w;
ArrayList<Word> words = new ArrayList<Word>();
int wordsDisplayed = -1;

void setup() {
  size(600, 600);
  textSize(16);
  textAlign(CENTER);
  //w = new Word(50, 50, "hello!");
}

void draw() {
  background(100);

  if (wordsDisplayed ==1) {
    for (int i = 0; i<words.size(); i++) {
      Word w = words.get(i);
      w.display();
    }
  } else {
    textSize(50);
    text(letters, width/2, 50);
  }
  //w.display();
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    words.add(new Word(random(0, width), random(0, height), letters, int(random(10, 100))));
    println(letters);
    letters = "";
    wordsDisplayed*=-1;
  } else if ((key > 31) && (key != CODED)) {
    letters = letters + key;
  }
}

class Word {
  int fontSize;
  String theWord;
  float x, y;

  Word(float x, float y, String text, int size) {
    theWord = text;
    this.x = x;
    this.y = y;
    fontSize = size;
  }

  void display() {
    textSize(fontSize);
    text(theWord, x, y);
  }
}
