int WIDTH = 800;
int HEIGHT = 600;
color textColor = color(255);
color textHighlight = color(51);
boolean textOver = false;
boolean textmove = false;
int textX;
int textY;
int movetextX = 5;
int count = 10;
int ballY = 50;
float r = 0;
float g = 0;
float b = 0;

void settings(){
    size(WIDTH, HEIGHT);  
}


void draw(){
  background(r,g,b);
  if (keyPressed) {
    if (key == 'r' && r > 0) {
      r -= 5 ;
    } else if (key == 'R' && r < 255) {
      r += 5 ;
    } else if (key == 'g' && g > 0) {
      g -= 5 ;
    } else if (key == 'G' && g < 255) {
      g += 5 ;
    } else if (key == 'b' && b > 0) {
      b -= 5 ;
    } else if (key == 'B' && b < 255) {
      b += 5 ;
    } 
  }
  
  if(!textmove){
    textX = width/2;
    update();
  }
  textY = height/2;
  textSize(20);
  text("Jonathan Forrider - A job worth doing is worth doing well.", textX, textY);
  textAlign(CENTER);
  if(textOver){
    fill(textHighlight);
  } else {
    fill(textColor);
  }
  
  if(textmove){
    textX += movetextX;
    fill(textColor);
  }
  
  if(textX > width - 250 || textX < 250){
    movetextX *= -1;
  }
  
  if(true)
  {
    ballY += count;
  }
  
  if(ballY > height - 40 || ballY < 40){
    count *= -1;
  }
  
  ellipse(400,ballY, 80, 80);
}

void mouseClicked(){
  if(textOver){
    textmove = true;
  } 
}

void update() {
  if ( overText(width/2-315, height/2-20, 630, 20) ) {
    textOver = true;
  } else {
    textOver = false;
  }
}

boolean overText(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
