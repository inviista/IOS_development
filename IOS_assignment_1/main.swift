// Assingment 1
// Step 1: Declare Variables for Personal Informa&on
var firstName: String = "Aldiyar"
var lastName: String = "Sadykov"
let birthYear: Int = 2004
let currentYear: Int = 2025
var isStudent: Bool = true
var height: Double = 1.85
var favoriteColor: String = "Blue"
var country: String = "Kazakhstan"
var age: Int = currentYear - birthYear


// Step 2: Create Variables for Your Hobbies and Interests
var hobby: String = "playing volleyball"
var secondHobby: String = "playing football"
var thirdHobby: String = "playing basketball"
var numberOfHobbies: Int = 3
var favoriteNumber: Int = 7
var isHobbyCreative: Bool = false


// Step 3: Life Story Summary
var lifeStory: String = """
My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear).
I am currently a student. My height is \(height) meters.
My favorite color is \(favoriteColor), and I live in \(country).
I enjoy \(hobby).
I also like \(secondHobby) and \(thirdHobby).
I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber).
"""

// Bonus Task: Future Goals
var futureGoals: String = "In the future, I want to become a professional front-end developer, travel the world and buy Audi RS7."

// Combine everything
lifeStory += "\n" + futureGoals

// Step 4: Print
print(lifeStory)

