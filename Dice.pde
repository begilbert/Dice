void setup() {
    noLoop();
    size(502, 502);
}
float avg = 0;
int rollnum;
void draw() {
  for (int y = 0; y < 500; y += 50) {
    for (int x = 0; x < 500; x += 50){
      rollnum = (int)(Math.random() * 6) + 1;
      Die foo = new Die(x, y, rollnum);
      foo.show();
      avg += rollnum;
    }
  }
  System.out.println(avg);
  avg = 0;
}
void mousePressed() {
    redraw();
}
class Die {
  int myX, myY, roll, left, midx, right, top, midy, bottom;
  Die(int x, int y, int rollnum) {
    roll = rollnum;
    myX = x;
    myY = y;
    left = x + 13;
    midx = x + 26;
    right = x + 39;
    top = y + 13;
    midy = y + 26;
    bottom = y + 39;
    }
    void show() {
      rect(myX, myY, 51, 51);
      switch (rollnum) {
        case 1:
          ellipse(midx, midy, 10, 10);
          break;     
        case 2:
          ellipse(left, top, 10, 10);
          ellipse(right, bottom, 10, 10);
          break;
        case 3:
          ellipse(left, top, 10, 10);
          ellipse(midx, midy, 10, 10);
          ellipse(right, bottom, 10, 10);
          break;
        case 4:
          ellipse(left, top, 10, 10);
          ellipse(right, top, 10, 10);
          ellipse(left, bottom, 10, 10);
          ellipse(right, bottom, 10, 10);
          break;
        case 5: 
          ellipse(left, top, 10, 10);
          ellipse(right, top, 10, 10);
          ellipse(left, bottom, 10, 10);
          ellipse(right, bottom, 10, 10);
          ellipse(midx, midy, 10, 10);
          break;
        case 6:
          ellipse(left, top, 10, 10);
          ellipse(left, midy, 10, 10);
          ellipse(left, bottom, 10, 10);
          ellipse(right, top, 10, 10);
          ellipse(right, midy, 10, 10);
          ellipse(right, bottom, 10, 10);
          break;
      }
    }
}
    
