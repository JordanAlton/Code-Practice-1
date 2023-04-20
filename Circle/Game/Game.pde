static final int SPLASH = 0;
static final int PLAY = 1; 
static final int LOOSE = 2;
int gameState = SPLASH;

void setup()
{
 size(1200,800); 
 gameStateChange(SPLASH);
}

void draw()
{
  if (gameState == SPLASH) splash_run();
  if (gameState == PLAY) game_run();
  //if (gameState == Loose) lose_run();
}

void keyPressed() 
{
  if (gameState == SPLASH) splash_keyPressed();
}
void gameStateChange(int state)
{
  gameState = state;
  if(gameState == SPLASH) splash_init();
  if (gameState == PLAY) game_init();
  if (gameState == LOOSE) loose_init();
}


/*------------------Splash Start--------------------------*/

void splash_init()
{
  
}

void splash_run()
{
 background(0); 
 textSize(100);
 textAlign (CENTER);
  fill(255);
  text("Press ANY key",width/2,height/2);
  //Call to char
}

void splash_keyPressed()
{
  gameStateChange(PLAY);
}
/*-----------------------Splash End----------------------*/

/*----------------------Game Start----------------------*/

void game_init()
{
  
}

void game_run()
{
 background(255);
 //call to char 
 
}
/*---------------------Game End-------------------------*/


/*--------------------Loose Start----------------------*/

void loose_init()
{
  
}

void loose_run()
{
  
}

/*---------------------Loose End-----------------------*/
