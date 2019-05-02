
class Agent {
  //position
  float x;
  float y;
  float WIDTH;
  float HEIGHT;
  Environment e;
  
  //movment
  float vel;
  boolean duck;
  
  Agent(Environment e){
    this.e = e;
    this.WIDTH = 50;
    this.HEIGHT = 100;
    this.x = HEIGHT;
    this.y = e.ground - (HEIGHT/2);
    this.vel = 0;
  }
  
  void show(){
   //Duck
    if(duck){
      HEIGHT = 50;
      this.y = e.ground - (HEIGHT/2);
    }else{
      HEIGHT = 100;
    }
    
   //Jump
   if (onGround()){
     this.y = e.ground - (HEIGHT/2);
     this.vel = 0;
   }else{
     this.vel -= 0.2;
     this.y -= this.vel;
   }
    
   rectMode(CENTER);
   fill(0, 0, 255);
   rect(x, y, WIDTH, HEIGHT);
  }
  
  boolean onGround(){
    return y >= e.ground - HEIGHT/2;
  }
  
  void jump(){
    if (onGround()){
      duck(false);
      vel = 5;
      this.y -= 0.01;
    }
  }
  
  void duck(boolean duck){
    if (onGround()){
      this.duck = duck;
      if(duck){
      HEIGHT = 50;
      }else{
      HEIGHT = 100;
      }
      this.y = e.ground - (HEIGHT/2);
    }
  }
}
