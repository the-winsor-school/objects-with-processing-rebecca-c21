using System;

namespace Variables
{
    class MainClass
    {
        public static void Main(string[] args)
        {

        	/*
            int x; //he calls them buckets; we put stuff into them and take stuff out of them 
            int y; //here, we declare their existence
            //there is a range of just over two billion for interger variables in c sharp

            x = 7; //the equal sign in this case is known as an assign; 
            y = x + 3; //it makes whatever is on the left equal to whatever is seen on the right
            //perfect example of assignment and retrievement of variables
            
            Console.WriteLine(y);
            Console.ReadLine(); 
            */
            //for large comments

            Console.WriteLine("What is your name?"); //this method goes to the next line
            Console.Write("Type your first name: "); //this type of method prints the statement and waits on the line
            string myFirstName; //we are interested in a STRING of alphanumeric characters, which is why we use this data type
            myFirstName = Console.ReadLine(); //this allows us to retrieve information from FirstName
            //never repeat variable names 

            /*
            string myLastName; //same variable controles as the whole myFirstName variable type
            Console.Write("Type your last name: ");
            string myLastName;
            myLastName = Console.ReadLine();
            */

            //same as what's right above
            Console.WriteLine("Type your last name: ");
            string myLastName = Console.ReadLine(); 

            Console.WriteLine("Hello, " + myFirstName + " " + myLastName); //we're adding strings together
            Console.ReadLine(); 

        }
    }
}
