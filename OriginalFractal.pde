ArrayList<Curve> lines = new ArrayList<Curve>();
float factor = 2.2;

public void setup()
{
  size(1500,1500);
  background(0,0,0);
}

public void draw()
{
  recursion(750,750,500);
}

public void segment(float x, float y, float dia)
{
  fill(0,0,0);
  stroke(255,255,255);
  ellipse(x+(0.5*dia),y,dia,dia*1.5);
  
  fill(0,0,0);
  stroke(255,255,255);
  ellipse(x-(0.5*dia),y,dia,dia*1.5);
  
  fill(50,0,50);
  stroke(0,0,0);
  circle(x,y,dia);
}

public void recursion(float x, float y, float dia)
{
  if(dia<6)
  {
    segment(x,y,dia);
    return;
  }
  segment(x,y,dia);
  recursion(x+(dia),y,dia/3);
  recursion(x-(dia),y,dia/3);
  recursion(x+(0.5*dia),y+(0.75*dia),dia/3);
  recursion(x+(0.5*dia),y-(0.75*dia),dia/3);
  recursion(x-(0.5*dia),y-(0.75*dia),dia/3);
  recursion(x-(0.5*dia),y+(0.75*dia),dia/3);
}
