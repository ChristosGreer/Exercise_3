int incsec, incmin, inchour = 0;
int secCheck, minCheck, hourCheck = -1;
int secCount, minCount, hourCount = 0;
boolean sectr, mintr, hourtr = false;
void setup() {
  size(1920, 1080);  
}

void draw() {
  background(0);
  int sec = second(); //0-59
  int min = minute(); //0-59
  int hour = hour(); //0-23    
  //rect(0, 0, sec * 24, 399);
  //rect(0, 400, min * 24, 399);
  //rect(0, 800, hour * 60, 399);
  
  if (sec != secCheck) {
    secCount = 5;
    secCheck = sec;
  } else {
    incsec = 0;
  }
  if (min != minCheck) {
    minCount = 5;
    minCheck = min;
  } else {
    incmin = 0;
  }
  if (hour != hourCheck) {
    hourCount = 5;
    hourCheck = hour;
  } else {
    inchour = 0;
  }
  if (secCount > 0) {
    if (secCount == 5) {
      incsec = 4;  
    } else if (secCount == 3) {
      incsec = 7;
    } else if (secCount == 1) {
      incsec = 4;
    }
    secCount--;
  } else {
    incsec = 0;
  }
  if (minCount > 0) {
    if (minCount == 5) {
      incmin = 4;  
    } else if (minCount == 3) {
      incmin = 7;
    } else if (minCount == 1) {
      incmin = 4;
    }
    minCount--;
  } else {
    incmin = 0;  
  }
  if (hourCount > 0) {
    if (hourCount == 5) {
      inchour = 3;  
    } else if (hourCount == 3) {
      inchour = 5;
    } else if (hourCount == 1) {
      inchour = 3;
    }
    hourCount--;
  } else {
    inchour = 0;  
  }
  fill(0);
  stroke(255);
  ellipse(640, 540, 960, 960);
  ellipse(1440, 340, 600, 600);
  ellipse(1275, 840, 384, 384);
  fill(150);
  stroke(100);
  ellipse(640, 540, (sec * 15) + 60 + incsec, (sec * 15) + 60 + incsec);
  ellipse(1440, 340, (min * 9) + 60 + incmin, (min * 9) + 60 + incmin);
  ellipse(1275, 840, (hour * 15) + 24 + inchour, (hour * 15) + 24 + inchour);
  fill(0);
  stroke(255);
  ellipse(640, 540, 60, 60);
  ellipse(1440, 340, 60, 60);
  ellipse(1275, 840, 24, 24);
  fill(255);
  textSize(45);
  text("S", 629, 556);
  textSize(35);
  text("M", 1425, 353);
  textSize(15);
  text("H", 1270, 846);
}
