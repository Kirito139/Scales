void setup() {
    size(500, 500);  //feel free to change the size
    background(50);
    noFill();
    // stroke(255,0,0);
    noStroke();
    frameRate(1);
    // noLoop(); //stops the draw() function from repeating
}
void draw() {
    for(int y = 0; y < 20; y++) {
        if (y%2 == 0) { // draws 0101 pattern
            // draws back layer
            for(int x = 0; x < 20; x++) {
                scale(x*60, 500-y*40);
            }
            // draws front layer
            for(int x = 0; x < 20; x++) {
                scale(x*60+30, 500-y*40);
            }
        } else { // draws 1010 pattern
            // draws back layer
            for(int x = 0; x < 20; x++) {
                scale(x*60+30, 500-y*40);
            }
            // draws front layer
            for(int x = 0; x < 20; x++) {
                scale(x*60, 500-y*40);
            }
        }
    }
    for(int y = 0; y < 20; y++) {
    }
}
void scale(float x, float y) {
    //your code here
    int randred = (int)(Math.random()*256);
    int randgreen = (int)(Math.random()*256);
    int randblue = (int)(Math.random()*256);
    triangle(x,y, x+20,y+50, x+40,y);
    fill(randred-50, randgreen-20, randblue);
    bezier(x,y, x+10,y+10, x+15,y+15, x+20,y+50);
    bezier(x+40,y, x+30,y+10, x+25,y+15, x+20,y+50);
}
