/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let milesWalked: [Double] = [2.5, 3.0, 1.8, 4.2, 5.5, 0.5, 3.8, 2.0, 0.0, 6.5, 4.0, 1.2, 3.7, 7.2, 0.0, 5.0, 3.4, 2.1, 6.8, 2.9]
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!

func dailyWalkingProgress(dailyMiles: Double) -> String {
    let goal = 5.0  // Your daily walking goal (you can change this value)

    if dailyMiles == goal {
        return "You met your daily walking goal! Great job!"
    } else if dailyMiles > goal {
        return "You exceeded your daily walking goal! Keep up the fantastic work!"
    } else if dailyMiles >= (goal - 1.0) {
        return "You're almost there! Just a little more to reach your goal."
    } else {
        return "You have some work to do to reach your daily walking goal. You can do it!"
    }
}


//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for miles in milesWalked {
    let progressMessage = dailyWalkingProgress(dailyMiles: miles)
    print(progressMessage)
}




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
