//
//  ViewController.swift
//  Excercises
//
//  Created by Daniel Washington Ignacio on 26/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    /*Exercise 1
     Given an unsorted array, create a function that returns the nth smallest integer (the smallest integer is the first smallest, the second smallest integer is the second smallest, etc).
     
     nthSmallest([1, 3, 5, 7], 1) ➞ 1
     nthSmallest([1, 3, 5, 7], 3) ➞ 5
     nthSmallest([1, 3, 5, 7], 5) ➞ nil
     nthSmallest([7, 3, 5, 1], 2) ➞ 3
     */
    var result: [Int] = []
    
    
    
    /*Exercise 2
     Create a function that takes an initial word and extracts any words that start with the same letters as the initial word.
     
     dictionary("bu", ["button", "breakfast", "border"]) ➞ ["button"])
     dictionary("tri", ["triplet", "tries", "trip", "piano", "tree"]) ➞ ["triplet", "tries", trip"]
     dictionary("beau", ["pastry", "delicious", "name", "boring"]) ➞ []
     */
    

    
    /*Exercise 3
     Create a function that takes an array of values and returns the first and last values in a new array.

     Examples
     firstLast([5, 10, 15, 20, 25]) ➞ [5, 25]
     firstLast(["edabit", 13, false, true]) ➞ ["edabit", true]
     firstLast(["hello", "edabit", "dot", "com"]) ➞ ["hello", "com"]
     */
    
    
    
    /*Exercise 4
     Your function will be passed two functions, f and g, that don't take any parameters. Your function has to call them, and return a string which indicates which function returned the larger number.

     If f returns the larger number, return the string f.
     If g returns the larger number, return the string g.
     If the functions return the same number, return the string neither.
     
     Examples
     larger({5}, {10}) ➞ "g"
     larger({25}, {25}) ➞ "neither"
     larger({505050}, {5050}) ➞ "f"
     
     */
    

    /*Exercise 5
     Create a function that takes a string and returns a string in which each character is repeated once.

     Examples
     doubleChar("String") ➞ "SSttrriinngg"
     doubleChar("Hello World!") ➞ "HHeelllloo  WWoorrlldd!!"
     doubleChar("1234!_ ") ➞ "11223344!!__  "
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Exercice 1
      //  print(nthSmallest(intArray: [7,3,5,1], nth: 1))
        
        
        //Exercise 2
      //  dictionary(value: "tri", arrayString:["triplet", "tries", "trip", "piano", "tree"])
       // dictionary(value: "bu", arrayString:["button", "breakfast", "border"]) ➞ ["button"])
        
        
        //Exercise 3
       // firstLast(intArray: [5, 10, 15, 20, 25])
       // firstLast(intArray: ["edabit", 13, false, true])
        
        
        
        //Exercise 4
      //  print(larger({5}, {10}))
      //  print(larger({25}, {25}))
        
        //Exercise 5
        print(doubleChar("String"))
        
    }
    
    //Exercise 1
    func nthSmallest(intArray: [Int], nth: Int) -> Int {
        if nth > intArray.count{
            return 0
        }
        result += intArray.sorted()
        return result[nth-1]
    }
    
    
    //Exercise 2
    func dictionary(value: String, arrayString: [String]){
        for n in arrayString{
            if n.contains(value){
                print(n)
            }
        }
    }
    
    //Exercise 3
    func firstLast(intArray: [Any]){
        var resultArray: [Any] = []
        resultArray.append(intArray[0])
        resultArray.append(intArray.last ?? 0)
        print(resultArray)
        
    }

    //Exercise 4
    func larger(_ f: () -> Int, _ g: () -> Int) -> String {
        if f() > g(){
            return "f"
        }else if f() < g() {
            return "g"
        }else{
            return "neither"
        }
    }
    
    
    //Exercise 5
    func doubleChar(_ str: String) -> String {
        var resultArray: [String] = []
        for n in str{
            resultArray.append("\(n)")
            resultArray.append("\(n)")
        }
        return resultArray.joined(separator: "")
    }
    
    
}

