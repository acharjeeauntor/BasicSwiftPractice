import Foundation
////////////////////////////////////// Variable

/*
 1. Two types of variable in Swift
    * var = Not constant
    * let = Constant
 2. Dependes On the value data type will be change for "var" & "let"
 3. We can define data type and swift will strictly maintain this
 
 */
//var name = "Auntor"
//var age = 24
//var isMarried = false
//print(type(of: isMarried))
//print(age)
//age = 25
//print(age)
//// var age = 27 - Invalid redeclaration of 'age'
//
//
//let height = 5.5
//print(type(of: height))
//
//// height = 5.7  - Cannot assign to value: 'height' is a 'let' constant
//// let height = 5.8 - Invalid redeclaration of 'height'
//
//print("My Name is \(name).I am \(age) years old. My height is \(height)")
//
//// We can define data type and swift will strictly maintain this
//
//var age2:Int = 24
//var name2:String = "Auntor"
//var height2:Float = 1.98736387
//var wigth:Double = 1.55
//var isCompleted:Bool = true
//
//name2 = "Acharja"
//print(name2)
////name2 = 23    // This can not be possible because the data type already define as String
//
//class Person{
//
//}
//
//var auntor:Person = Person()
//print(type(of: auntor))


///////////////////////////// Condition


//let a = ""
//
//if a.isEmpty{
//    print("a is empty")
//}else{
//    print("a is not empty")
//}
//
//
//var x = 10
//var y = 11
//
//if x == y{
//    print("Value of X and Y are same")
//}else{
//    print("value of x and y is not same")
//}
//
//let gender = "Female"
//
//if gender == "Male"{
//    print("Gender is Male")
//}else if gender == "Female"{
//    print("Gender is Female")
//}else{
//    print("None of the gender")
//}
//
//if gender == "Male" || gender == "Female"{
//    print("He/She is a human")
//}else{
//    print("Unknown Type")
//}
//
//if x == 10 && y == 11{
//    print("Delearation of the value is correct")
//}else{
//    print("Delearation of the value is incorrect")
//}






////////////////////////////// Function

//func myFunction(a:Int,b:Int)->Int{
//    return a + b
//}
//
//print(myFunction(a: 5, b: 7))
//myFunction(a: 4, b: 4)
//
//
//
//func isEven(number:Int)->Bool{
//    if number%2==0 {
//        return true
//    }
//    return false
//}
//
//print("Number Is Even: \(isEven(number: 4))")
//print("Number Is Even: \(isEven(number: 17))")
//
//
//func noReturnFunction(num:Int){
//    if num%2 == 0 {
//        print("Given Number \(num) is Even")
//    }else{
//        print("Given Number \(num) is Odd")
//    }
//}
//
//noReturnFunction(num: 10)
//noReturnFunction(num: 11)




///////////////////////////// Classes & Structs

/*
 There are little bit difference between Classes & Structs.
 
 Class is - Reference Type
 Structs is - Value Type
 
 Please see this link for more info: https://medium.com/@burakakyalcin/class-vs-struct-in-swift-f8c48eaacdba
 
 
 */

////////// class

//class Car {
//    var color:String
//    var wheel:Int
//    let type = "CAR"
//
//    init(color:String,wheel:Int) {
//        self.color = color
//        self.wheel = wheel
//    }
//
//    func carDetails(){
//        print("The color of the car is \(color) and it has \(wheel) wheel, The type is \(type)")
//    }
//}
//
//var obj1 = Car(color: "Red", wheel: 4)
//obj1.carDetails()
//var obj2 = Car(color: "Blue", wheel: 4)
//obj2.carDetails()
//
//// Reference Type
//var redCar = obj1
////print(type(of: redCar))
//print(obj1.color)
//print(redCar.color)
//
//obj1.color = "Yellow"
//
//print(redCar.color)



////////// struct

//struct Car {
//    var color:String
//    var wheel:Int
//    let type = "CAR"
//
//    init(color:String,wheel:Int) {
//        self.color = color
//        self.wheel = wheel
//    }
//
//    func carDetails(){
//        print("The color of the car is \(color) and it has \(wheel) wheel, The type is \(type)")
//    }
//}
//
//var obj1 = Car(color: "Red", wheel: 4)
//obj1.carDetails()
//var obj2 = Car(color: "Blue", wheel: 4)
//obj2.carDetails()
//
//// Value Type
//var redCar = obj1
////print(type(of: redCar))
//print(obj1.color)
//print(redCar.color)
//
//obj1.color = "Yellow"
//print(obj1.color)
//print(redCar.color)


////////////////////////// Loops

//var x = 0
//while x <= 3 {
//    print(x)
//    x += 1
//}
//
//
//let number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
//for num in number{
//    if num % 2 == 0{
//        print(num)
//    }
//}


////////////////////////// Optionals & Unwrapping
/*
 
 1. Here x may or may not be an Int so ekhane tai ? (optional) use kora hoyce.
 2. optional value k amra nil korte pari but general value gulo j type diye declear kora thkbe oi type cara hbe na so oigulo nil kora jabe na
 3. optional value gulo use korte hole must value gulo unwrapping kore nite hbe.
 
 */
//var a:Int? = 6
//var b:Int? = 3
//var x:Int? = 10
//var y:Int = 20
//var z:String = "auntor"
//// z = nil // This can not be possible because cannot be assigned to type 'String
//x = nil // This can be possible because the type of x is optional
//print(type(of: x))
//
//// var result = x + y // Value of optional type 'Int?' must be unwrapped to a value of type 'Int'
//
//  //var res = a + b  // Binary operator '+' cannot be applied to two 'Int?' operands
//
//
//
//
//// Unwrapping
//
///*
// jodi optional value er moddhe kicu thake without nil, tahole { } er vitorer code excute hbe but
//jodi optional er vitor kicu na thke tahole {} er vitorer kicu execute hbe na
//
//*/
//
//
////var j:String? = "aauntor"
//var j:String? = nil
//if let v = j {
//    print("UNwrapping Done")
//}
//
//// Jokhn j = nil hbe tokhn {} er vitorer gulo execute hbe na
////Jokhn j = value/"" hbe tokhn {} er vitorer gulo execute hbe
//
//
//
//if let value = b {
//    if let value2 = a {
//        let res1 = value + value2
//        print(res1)
//    }
//}
//


////////////////////////////////////// Guard Statements
/*
 similar if,else , just guard a else ta fisrt a likha thake and if condition tuku rest of the code hisebe use hoy
 */

//func evenFunction(number:Int)->Bool{
//    guard number % 2 == 0 else {return false}
//        return true
//}
//
//print(evenFunction(number: 4))


////////////////////////////////////// Enumerations
/*
 
 An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
 
 
 
 */

//enum CompassPoint {
//    case north
//    case south
//    case east
//    case west
//}
//
//print("I am in \(CompassPoint.west) point")
//
//var point = CompassPoint.north
//point = .east
//
//print("I am in \(point) point")
//
//
//
//
//enum Planet {
//    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
//
//print("I am living in \(Planet.earth)")
//
//var place = Planet.jupiter
//place = .uranus
//
//print("I am living in \(place) now")
//
//
//
//////// Raw Value
//
//enum CompassPoint2:String {
//    case north
//    case south
//    case east
//    case west
//}
//
//print(CompassPoint2.west.rawValue)
//
//enum Planet2:Int {
//    case mercury=1, venus=2, earth=3, mars, jupiter
//}
//
//print(Planet2.venus.rawValue)
//print(Planet2.mars.rawValue)
//
//
//////////////////////////////////////// Switch Statement
//
//
//var x = "30"
//switch x {
//case "20":
//    print("Its 20")
//case "10":
//    print("Its 10")
//default:
//    print("Its Default")
//}
//
//
//var points = CompassPoint2.east
//
//switch points {
//case .east:
//    print("its east")
//    break
//case .north:
//    print("its north")
//    break
//case .west:
//    print("its West")
//    break
//case .south:
//    print("its south")
//    break
//}

////////////////////////////////////// Protocols
/*
 Protocols just like interface in others language. Protocol have declaeration but implementation will done
 by others class. Just inharite the protocol and do the implemenation accordingy. protocol j swift a data source/Delegate hisebe likha hoy
 */

//protocol CarDataSource {
//    var color:String{get set}
//    func drive()
//    func isFourWheels()->Bool
//}
//
//class Car{
//
//}
//
//class BMW:Car, CarDataSource {
//    var color: String
//
//    init(color:String) {
//        self.color = color
//    }
//
//    func drive() {
//       print("lets Drive the car")
//    }
//
//    func isFourWheels() -> Bool {
//        return true
//    }
//}
//
//var car1 = BMW(color: "Red")
//print(car1.color)
//print(car1.isFourWheels())
//car1.drive()


////////////////////////////////////// String

//var firstName = "Auntor"
//var lastName = "Acharja"
//print("Full Name is \(firstName) \(lastName)")
//var fullName = firstName + lastName
//print(fullName)
//
//var variableString = "Horse"
//variableString += " and carriage"
//print(variableString)
//print(variableString.count)
//
//for char in variableString{
//    print(char)
//}
//
//
//// String values can be constructed by passing an array of Character values as an argument to its initializer:
//let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
//let catString = String(catCharacters)
//print(catString)
//
//// Multiline String Literals
//
//let quotation = """
//The White Rabbit put on his spectacles.  "Where shall I begin,
//please your Majesty?" he asked.
//
//"Begin at the beginning," the King said gravely, "and go on
//till you come to the end; then stop."
//"""
//
//print(quotation)
//
//
//let greeting = "Guten Tag!"
//var firstIndex = greeting[greeting.startIndex]
//print(firstIndex)
//
//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//print(welcome)


////////////////////////////////////// Array & Dictionaries

// Array

//var a = [1,2,3,4]
//print(a)
//var b:[Int] = [1,2,3,4,5]
//print(b)
//
//var details:[String] = ["Auntor","Acharja"]
//print(details)
//
//var info:[Any] = ["Auntor","Acharja",24,0179,6.00,82.0000,true,false]
//print(info[4])

//var number = [12,13,56,67,43,23,89]
//print(number[0])
//number.count
//number.last
//number.append(50)
//number.insert(40, at: 1)

//
//// Dictionaries
//var myInfo1 = ["name":"Auntor","Age":"24"]
//print(myInfo1)
//
//var myInfo2:[String:Int] = ["name":3,"Age":7]
//
//for myInfo in myInfo2{
//    print(myInfo)
//}
//
//for (key,value) in myInfo2{
//    print(key)
//}
//
//for (key,value) in myInfo2{
//    print(value)
//}

////////////////////////////////////// Number Type

//var a:Int = 10
//var b:Float = 2.98
//var c:Double = 3.000000300033
//
////var result  = a + b // This can not be possible,Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
//
//var result2 = a + Int(b)
//print(result2)
//
//var result3 = Double(a) + Double(b) + c
//print(result3)
//
//var result4 = Float(a) + b + Float(c)
//print(result4)


/////////////////////// Naming Conventions

/// Snake Case
//var first_name = ""
//func is_valid_number(){}
//
///// Camel Case
//var firstName = ""
//func isValidNumber(){}



///////////////////////  Libraries & Frameworks

//import Foundation
//import StoreKit
//import UIKits




////////////////////////// Type aliases
/*
 Type aliases mean amra jodi kono kicur type custom kore dite chy tahole amra
 oitar jnno type aliases use korte pari
 */

//typealias Code = String
//
//var code:Code = ""
//
//func validateCode(code:Code){
//    print(code)
//}
//
//validateCode(code:"abc")
//
//
//
//typealias PomoCodeValidationFunction = ((String) -> (Bool))?
//
//var validateFunction:PomoCodeValidationFunction


/////////////////////////////  Ternary Operator & Return Statement
/*
 Ternary Operator just if..else er short version. if ... else condition er jnno amader
 onk line code likhte hoy but ei code gulo optimize korte hole amra Ternary Operator & Return Statement use korte pari.One line a codition er kaj ses hoye value return kora jay.
 */


//func isEvenFunction(number:Int) -> Bool{
//    return number % 2 == 0 ? true : false   // ? .... : .....  => This call ternary operator
//}
//
//print(isEvenFunction(number: 7))





////////////////////////////////////// Implement a Searching Algo

//let array1:[Int] = [23,65,6,4,6,8,34,23,11,22,33,87,90]
//
//func isNumberFound(number:Int,array:[Int]) -> Bool{
//
//    for x in array{
//        if x == number{
//            return true
//        }
//    }
//    return false
//}
//
//print(isNumberFound(number: 6, array: array1))



//////////////////////////////////////  Sorting

//var array1:[Int] = [23,65,4,6,8,34,23,11,22,33,87,90]
//array1.sort()
//print(array1)

////////////////////////////////////// Implement a Bubble Sort Algo

//var array = [7,4,8,9,2,3]
//
//func sortArray(arr:[Int]) -> [Int]{
//    var array  = arr
//    for _ in 0..<array.count - 1{
//    for i in 0..<array.count - 1{
//        if (array[i] > array[i+1]){
//            let temp = array[i]
//            array[i] = array[i+1]
//            array[i+1] = temp
//        }
//    }
//    }
//    return array
//}
//
//print(sortArray(arr: array))


////////////////////////////////////// Set

/*
 > Unordered
 > No Duplicates
 > Performance
 */

//var nums = [10,34,56,78,34,10]
//var numSet = Set(nums)
//numSet.insert(80)
//print(numSet)
//numSet.contains(10)



