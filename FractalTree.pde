private double fractionLength = .8; 
private int smallestBranch = 20; 
private double branchAngle = .2;  
public void setup() 
{   
  size(700,700);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(350,680,350,580);   
  drawBranches(350,580,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
 int endX1,endX2,endY1,endY2;
  double angle1 = angle - branchAngle;
  double angle2 = angle + branchAngle;
  branchLength = branchLength*fractionLength;
  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2= (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if (branchLength > smallestBranch) {
    drawBranches(endX1,endY1,branchLength+2,angle1);
    drawBranches(endX2,endY2,branchLength+2,angle2);
  }
} 
