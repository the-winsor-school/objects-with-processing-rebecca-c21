class Vector2
{
  float x, y; // coordinats of this Vector2
  // could also be on two separate lines as two separate floats
  
  
  // this is a constructor, it is where you initialize an instance of a Vector2, you get the data from the floats
  Vector2(float x, float y)
  {
    this.x = x; // this is the keyword for this reference, it's the object talking about itself, this x is talking about the x at the very top 
    this.y = y;  //it makes the y in line 11 the same as the x in line 3
  }
  
  //This is the return type the other makes sure that it is a Vector2, it has an x and y
  Vector2 add(Vector2 other) //this vector 2 is the return type; it tells you that the output is going to be a Vector2
  {
    return new Vector2(this.x + other.x + this.y + other.y);
    //return means this is the answer, new means call the Vector2 Initialize, the stuff in the brackets calls the sum of the x and y coordinates
  }
}
