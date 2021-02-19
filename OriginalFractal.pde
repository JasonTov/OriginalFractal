int count;

public void setup()
{
  size(1000,1000);
  background(0,0,0);
}

public void draw()
{

}

public void mouseClicked()
{
  count = 0;
  recursion(0,500,500);
  System.out.println(count);
}

public void segment(float x, float y, float dia)
{
  int r = (int)(255*Math.random());
  int g = (int)(255*Math.random());
  int b = (int)(255*Math.random());
  
  count++;
  
  fill(0,0,0);
  stroke(255,255,255);
  ellipse(x+(0.5*dia),y,dia,dia*1.5);
  
  fill(0,0,0);
  stroke(255,255,255);
  ellipse(x-(0.5*dia),y,dia,dia*1.5);
  
  fill(r,g,b);
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
