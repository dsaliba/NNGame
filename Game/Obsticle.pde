class Obsticle {
  float x;
  float y;
  float WIDTH;
  float HEIGHT;
  Environment e;
  
  Obsticle(float WIDTH, float HEIGHT, Environment e){
    this.e = e;
    this.WIDTH = WIDTH;
    this.HEIGHT = HEIGHT;
    this.x = width + (WIDTH/2) + e.speed;
    this.y = this.e.ground - (HEIGHT/2);
  }
  
  void show(){
    this.x -= e.speed;
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(x, y, WIDTH, HEIGHT);
  }
}
