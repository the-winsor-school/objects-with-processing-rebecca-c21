import math.*; //necessary for angle return type
class Vector2{
  private double x, y; // coordinates of this Vector2
  // could also be on two separate lines as two separate floats
  
  // this is a constructor, it is where you initialize an instance of a Vector2, you get the data from the floats
  Vector2(double x, double y){
    this.x = x; // this is the keyword for this reference, it's the object talking about itself, this x is talking about the x at the very top 
    this.y = y;  //it makes the y in line 11 the same as the x in line 3
  }
  
  //This is the return type the other makes sure that it is a Vector2, it has an x and y
  public Vector2 add(Vector2 other){ //this vector 2 is the return type; it tells you that the output is going to be a Vector2
    return new Vector2(this.x + other.x, this.y + other.y);
    //return means this is the answer, new means call the Vector2 Initialize, the stuff in the brackets calls the sum of the x and y coordinates
  }
  
  //returns a new vector that has had the other vector subtracted from it
   public Vector2 subtract(Vector2 other){ 
    return new Vector2(this.x - other.x, this.y - other.y);   
  }
  
  //returns Vector2's magnitude using a square function
  public double magnitude(){
    return sqrt(sq((float)x)+sq((float)y));
  }
  
  //new Vector2 is inversed by changing the sign  
  public Vector2 inverse(){
    return new Vector2(-x, -y); 
  }
  
  //returns a new vector scaled by factor (factor is s (sorry Mr. Cox))
  public Vector2 scale(double factor){  
    return new Vector2(factor*x, factor*y); 
  }
  
  //new Vector2 has the x and y values switched
  public Vector2 perpendicular(){
    return new Vector2(y, x); 
  }
  
  //new Vector2 created by dividing x and y by their magnitudes (made variable going to magnitude so the entire return type isn't done twice)
  public Vector2 unitVector(){
    double mag = magnitude();
    return new Vector2(x/mag, y/mag);
  }
  
  //found dot product equation to apply to Vector2 and other
  public double dotProduct(Vector2 other){
    return(x*other.x + y*other.y); 
  } 
  
  //the arccosine equation had to be applied to the dotProduct return type, in this case it was the dotProduct of unitVector and other.unitVector
  public double angle(Vector2 other){
    double d = unitVector().dotProduct(other.unitVector());
    return acos((float)d);
  }
  
}
