class Char extends Sprite
{
 float maxSpeed = 1;
 String state = "start";
 float jumpSpeed = 2.0;
 
 Char(String _id)
 {
  super(_id);
  this.acceleration = new PVector(1.0,0);
  this.registerAnimation(new Animation("placeholder","svg")); //Calls to Animation
  this.registerAnimation(new Animation("placeholder_reverse","svg"));
  this.scale = 1.0;
  this.h = 120;
  this.location.y = height-this.h-100;
  this.acceleration.y = 0.05; //Gravity
 }
void jump()
  {
    this.state = "jump";
    this.velocity.y = -jumpSpeed;
    this.location.y = this.location.y - 0.1;
  }
  
 void check()
 {
 
   Collision coll = new Collision(this,true);
   int res = coll.box2circle(100,100,width-200,height-200,false);
   if(res == Collision.RIGHT || res == Collision.LEFT)
   {
      this.acceleration.x = this.acceleration.x * (-1.0);
      this.velocity.x = this.velocity.x * (-1.0);
    }
    this.velocity.limit(this.maxSpeed);
    if(this.velocity.x < 0)
    {
      this.currentAnim = 1;
    }
    else 
    {
      this.currentAnim = 0;
    }
    

  }
  
}
 
