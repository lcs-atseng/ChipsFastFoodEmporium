//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT

// welome
print("Welcome to Chip's Fast Food Emporium")

// Collect and filter user input here
var validBurgerChoice = 0
prompt: while 1 == 1 {
    
    print("Please enter a burger choice: ")
    
    // Test #1: Get input and make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil, so loop again and ask for a new burger choice
        continue
        
    }

    // Test #2: Can the input that was given be made into an integer?
    guard let burgerNumber = Int(givenInput) else {

        // If not, go back and loop again to show the prompt again and get input again
        continue
    }
    
    // Test 3: Is the input in the correct range?
    if burgerNumber < 1 || burgerNumber > 4 {
        
        // The selected burger choice is too low or too high
        continue
    }
    
    // If all tests passed, we have valid input!
    validBurgerChoice = burgerNumber
    break // stops the loop
    
}

var validSideOrderChoice = 0
prompt: while 1 == 1 {
    
    print("Please enter a side order choice: ")
    
    // Test #1: Get input and make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil, so loop again and ask for a new burger choice
        continue
        
    }
    
    // Test #2: Can the input that was given be made into an integer?
    guard let sideOrderNumber = Int(givenInput) else {
        
        // If not, go back and loop again to show the prompt again and get input again
        continue
    }
    
    // Test 3: Is the input in the correct range?
    if sideOrderNumber < 1 || sideOrderNumber > 4 {
        // The selected burger choice is too low or too high
        continue
    }
    
    // If all tests passed, we have valid input!
    validSideOrderChoice = sideOrderNumber
    break // stops the loop
    
}

var validDrinkChoice = 0
prompt: while 1 == 1 {
    
    print("Please enter a drink choice: ")
    
    // Test #1: Get input and make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil, so loop again and ask for a new burger choice
        continue
        
    }
    
    // Test #2: Can the input that was given be made into an integer?
    guard let drinkNumber = Int(givenInput) else {
        
        // If not, go back and loop again to show the prompt again and get input again
        continue
    }
    
    // Test 3: Is the input in the correct range?
    if drinkNumber < 1 || drinkNumber > 4 {
        // The selected burger choice is too low or too high
        continue
    }
    
    // If all tests passed, we have valid input!
    validDrinkChoice = drinkNumber
    break // stops the loop
    
}

var validDessertChoice = 0
prompt: while 1 == 1 {
    
    print("Please enter a dessert choice: ")
    
    // Test #1: Get input and make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil, so loop again and ask for a new burger choice
        continue
        
    }
    
    // Test #2: Can the input that was given be made into an integer?
    guard let dessertNumber = Int(givenInput) else {
        
        // If not, go back and loop again to show the prompt again and get input again
        continue
    }
    
    // Test 3: Is the input in the correct range?
    if dessertNumber < 1 || dessertNumber > 4 {
        // The selected burger choice is too low or too high
        continue
    }
    
    // If all tests passed, we have valid input!
    validDessertChoice = dessertNumber
    break // stops the loop
    
}

// PROCESS
// Implement the primary logic of the problem here
var totalCalorie = 0

//burger number to calorie
if validBurgerChoice == 1 {
  totalCalorie += 461
} else if validBurgerChoice == 2 {
    totalCalorie += 431
} else if validBurgerChoice == 3 {
    totalCalorie += 420
} else if validBurgerChoice == 4 {
    totalCalorie += 0
}

//side order to calorie
if validSideOrderChoice == 1 {
    totalCalorie += 100
} else if validSideOrderChoice == 2 {
    totalCalorie += 57
} else if validSideOrderChoice == 3 {
    totalCalorie += 70
} else if validSideOrderChoice == 4 {
    totalCalorie += 0
}

// drink to calorie
if validDrinkChoice == 1 {
    totalCalorie += 130
} else if validDrinkChoice == 2 {
    totalCalorie += 160
} else if validDrinkChoice == 3 {
    totalCalorie += 118
} else if validDrinkChoice == 4 {
    totalCalorie += 0
}

//dessert to calorie
if validDessertChoice == 1 {
    totalCalorie += 167
} else if validDessertChoice == 2 {
    totalCalorie += 266
} else if validDessertChoice == 3 {
    totalCalorie += 75
} else if validDessertChoice == 4 {
    totalCalorie += 0
}
// OUTPUT
print("Your total Calorie count is :")
print(totalCalorie)
// Report results to the user here
