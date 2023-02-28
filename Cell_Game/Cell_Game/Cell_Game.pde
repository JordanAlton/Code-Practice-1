int cellSize = 3;
int maxX = 0;
int maxY = 0;
Cell[][] cells;

int gameState = 0; 


void setup() 
{
 size(1200,900);
 maxX = width/cellSize;
 maxY = height/cellSize;
 cells  = new Cell[maxX][maxY];
 for(int y = 0; y < maxY; y = y+1)
 {
   for(int x = 0; x <maxX; x = x + 1)
   {
     cells[x][y] = new Cell(x,y,cellSize);
   }
  }
}

void draw() 
{
  for(int y = 0; y < maxY; y = y+1)
  {
   for(int x = 0; x < maxX; x = x + 1)
   {
    cells[x][y].display();
    cells[x][y].check();
   }
  }
  if(gameState == 1)
  {
    for(int y = 0; y < maxY; y = y+1)
  {
   for(int x = 0; x < maxX; x = x + 1)
   {
     cells[x][y].isLive = cells[x][y].nextLive;
   }
  }
  }

}


void mousePressed()
{

  
    println(mouseX + ";" + mouseY); 
  }
}

void keyPressed() 
{
 if(gameState == 1)
 {
  gameState = 0; 
 }
 else
 {
  gameState = 1; 
 }
}
