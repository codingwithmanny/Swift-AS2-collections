/**
 Assignment 2
 
 Describe the difference and similarities between arrays and tupples
 
 ANSWER:
 
 Tuples and Arrays are both collection types but where they differ mainly is
 in the extent of their additional functionality past initialization.
 While Tuples are limited in the initialization as a finite specified size and type,
 Arrays are not limited in their size and their stored value types.
 Both take advantage of index references to their stored values, Arrays can take advantage
 of additional functionality like resizing, mass repeated assignmen at initialization,
 collection appending, removal, removing all values, contains, multidimensional arrays, and ranges.
 A usecase for Tuples is where we know the exact data set size and types for the data we
 are defining and expect that data to be consistently the same,
 e.g. var Human = (name: "Manny", age: 30).
 A usecase for Arrays is where we might know the exact data set size and types for each value
 but we need to store and modify the data and length as needed,
 e.g. var Backpack : [Any] = ["Computer", "Keys", "Pencils", "Headphones", [0.50, 5, 20]].
 
 Additionally ranges are a shorthand form of defining a set (or range) of numbers with a start
 and end point. Ranges are limited in that if we decide to traverse it with a for loop, it
 would be required looping through each value versus only a smaller specific set.
 There is also the possibility to set an infinite, or undetermined length, for ranges which
 Arrays do not have but take advantage of for traversing or accessing specific values at either
 a determined starting point or end point, e.g.
 let arr = [1, 2, 3, 4]
 for number in arr[..2] {
    print(number)
 }
 // 1
 // 2
 // 3
 
 You would use Ranges instead of a Tuples or Arrays when you would want to specify
 a start, end, undetermined end or start, for a set of numbers to better pinpoint which
 values you'd want to access for output or referencing an index value.
 

 BREAKDOWN OF DIFFERENCES:

 BOTH:
 - 1. Are collections of data
 - 2. Can store multiple data types
 - 3. Have some sort of indexing for values
 
 DIFFER:
 - A. Initialization differs
 - B. Array you can specify one type for all values or multiple VS specific types for each value for tupples
 - C. We need to define the number of types of values for tupples where arrays we can specify the repeating value and how many it needs to repeat
 - D. Arrays have additional native functions (operations) that are associated to them
 - E. Reassignment range, arr[1...3]
 - F. Array pending arr.append
 - G. Insertion at specific index
 - H. Remove at specific index
 - I. Remova all
 - J. You can create multidimensional arrays
 - K. Arrays take advantage of ranges
 - L. Find if a value exists in array
 
 RANGES
 1...10 = Inclusive
 1..<10 = Exclusive
 
 ...5
 6...
 
 */

// IMPORTS
import UIKit

// VARIABLES

// BOTH
// 1. Collection of data
var tuple : (String, Int) = ("Hello", 1)
var arr : [String] = ["Hello"]

// 2. Can store multiple data types
let t : (String, Int) = ("Hello From Tupple", 2)
let a : [Any] = ["Hello From Array", 2]

// 3. Have some sort of indexing for values
print(t.0) // "Hello From Tupple"
print(a[0]) // "Hello From Array"

// DIFFER
// A. Initialization
var tuple2 : (String) = ("My String")
var arr2 : [String] = []
var arr3 = [Int]()

// B. One type for all vs defined for each type
var tuple3 : (String, String, String) = ("String1", "String2", "String3")
var arr4 : [String] = ["String1", "String2", "String3"]

// C. Length Assignment
var myArr : [String] = Array(repeating: "", count: 5)
var myTupple : (String, String, String, String, String) = ("", "", "", "", "")

// D. Arrays have additional native functions (operations) that are associated to them
var backpack : [Any] = ["Computer", 1]
backpack.append("Sandwich")

// E. Reassignment range, arr[1...3]
backpack[...2] = ["Something", "Another", 2]
print(backpack[0])

// F. Array pending arr.append
backpack.append("Another Value")

// G. Insertion at specific index
backpack.insert(50, at: 0)
print(backpack[0])

// H. Remove at specific index
backpack.remove(at: 0)
print(backpack[0])

// I. Remova all
backpack.removeAll()
print(backpack.count)

// J. You can create multidimensional arrays
backpack = [["Something", "Another"], "Huh?"]
print(backpack[0])

// K. Arrays take advantage of ranges
backpack[0...1] = ["Hello"]
print(backpack[0])

// L. Find if a value exists in array
var newArr = [1, 2, 3, 4]
print(newArr.contains(2))
