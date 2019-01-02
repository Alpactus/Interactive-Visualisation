boolean button2 = false, button3 = false;  //<>//

//ints for the button positions
//int x = 1050;
//int y = 700;
//int w = 75;
//int h = 30;

int x2 = 1050;
int y2 = 645;
int w2 = 75;
int h2 = 30;

int x3 = 950;
int y3 = 645;
int w3 = 75;
int h3 = 30;


void buttons() 
{
  textAlign(CENTER, CENTER);
  textSize(15);
  stroke(255);
  //if (button == false) 
  //{
  //  fill(#DBDBDB);
  //} else 
  //{
  //  fill(#758DFC);
  //}
  // rect(x, y, w, h);

  if (button2 == false) 
  {
    fill(#DBDBDB);
  } else 
  {
    fill(#88E582);
  }
  rect(x2, y2, w2, h2);
  if (button3 == false) 
  {
    fill(#DBDBDB);
  } else 
  {
    fill(#F74C46);
  }
  rect(x3, y3, w3, h3);
  fill(0);
  //text("Average", x+w/2, y+h/2);
  fill(0);
  text("Budget", x3+w3/2, y3+h3/2);
  fill(0);
  text("Profit", x2+w2/2, y2+h2/2);
}

void mousePressed() 
{
  // if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) 
  //{
  //  button = !button;
  //}

  if (mouseX > x2 && mouseX < x2+w2 && mouseY > y2 && mouseY < y2+h2) 
  {
    button2 = !button2;
  }

  if (mouseX > x3 && mouseX < x3+w3 && mouseY > y3 && mouseY < y3+h3) 
  {
    button3 = !button3;
  }
} 