import UIKit

var tweet: String? = nil
tweet = "Hello, world!"
print(tweet!)


//Implicit Unwrapped Optional
var assumedInt : Int!
assumedInt = 5
var implicitInt : Int = assumedInt
print(implicitInt)

//Optional Binding
var tweet1: String?
tweet1 = "Hello, world!"
if let actualTweet = tweet1 {
    print(tweet1!)
}else {
    print("Nothing")
}


let name: String? = nil
let unwrappedName = name ?? "Anonymous"

/*
 Range Operator
 1...3
 1..<2
 */

//Tuple
let complex = (1.0, -2.0)
let (real, imag) = complex
let (r, _) = complex


var product = ("Macbook", 1099.99)
product.1 = 1299.99
print(product)
print(product.1)

print("Product Name: \(product.0), Price: \(product.1)")


let s:Character = "b"
switch s {
case "a": print("a")
case "b": print("b")
    fallthrough
case "c": print("c")
case "d": print("d")
default: print("z")
}

let n = readLine()

let aPoint = (1,-1)
switch aPoint {
    case let (x,y) where x == y:
        print("\(x) is equal to \(y)")
    case let (x,y) where x == -y:
        print("\(x) is negative equal to \(y)")
    case let (x,y):
        print("\(x) and \(y) is some point")
}
