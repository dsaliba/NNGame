class Environment{
  float ground;
  float speed;
  float initSpeed;
  Agent a;
  ArrayList<Obsticle> obs;
  
  Environment(){
    this.ground = height-100;
    a = new Agent(this);
    this.initSpeed = width/250;
    this.speed = this.initSpeed;
    this.obs = new ArrayList<Obsticle>();
    obs.add(new Obsticle(25, 50, this));
  }
  
  void show(){
    fill(0);
    line(0, this.ground, width, this.ground);
    a.show();
    for (int i = 0; i < obs.size(); i++){
      obs.get(i).show();
      if (obs.get(i).x < 0 - (obs.get(i).WIDTH/2)) {
        obs.remove(i);
      }
    }
  }
  
}
