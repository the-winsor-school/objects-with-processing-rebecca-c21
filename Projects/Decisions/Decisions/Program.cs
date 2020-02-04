using System;

namespace Decisions
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Bob's Big Giveaway");
            Console.Write("Choose a door: 1, 2 or 3: ");
            string userValue = Consoe.ReadLine(); //singe equal signs it equals the next thing

            string message = ""''

            if (userValue == "1") //double equal means true or false
                message = "You won a new car!"; //you don't need curly braces if it's only one line of code

            //else if allows you to do more than one evaluation
            else if (userValue == "2")
                message = "You won a new boat!";

            else if (userValue == "3")
                message = "You won a new cat!";  
            
            else 
            {
                message = "Sorry, we didn't understand.";
                //message = message + "You Lose."
                message += "You Lose."; //shorter version of the thing above
            }

            //if we write this at the bottom, you gotta define it
            Console.WriteLine(message);
            Console.ReadLine(); 
        }
    }
}
