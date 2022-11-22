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
//var word = "cafe"
//print("the number of characters in \(word) is \(word.count)")
//
//
//let (x1, y1) = (1, 2)
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
//
//let pizzaInInches = 20
//
//// Compound Properties
//var numberOfSlice: Int {
//        return pizzaInInches - 5
//}
//print(numberOfSlice)


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
////
//if (x == y){
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

//func noReturnFunction() -> Void{
//    print("This function will not return any thing")
//}
//noReturnFunction()

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

//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
//print("min is \(bounds.min) and max is \(bounds.max)")


// Default Parameter Values

//func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
//    print("parameterWithDefault is \(parameterWithDefault)")
//}
//someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
//someFunction(parameterWithoutDefault: 4)



 



///////////////////////////// Classes & Structs


// Classe,Struct,enum er name always diffrent hote hbe, kokhno same howa jabe na.

/*
 There are little bit difference between Classes & Structs.
 
 Class is - Reference Type
 Structs is - Value Type
 For inheritence we must need to use Class because we can not inherit superClass in Struct
 
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




//class Vehicle {
//   var currentSpeed = 0.0
//    var description: String {
//        return "traveling at \(currentSpeed) miles per hour"
//    }
//    func makeNoise() {
//        print(type(of: description))
//    }
//    final func seat(){
//        print("One couple Seat")
//    }
// func speed(){
//        print("Speed")
//    }
//}
//
//var car = Vehicle()
//print(car.makeNoise())
//car.speed()
//
//class Bike:Vehicle{
//    var gear = 5
//    override func speed(){
//        print("Speed for Bike")
//    }
//
//    override var description: String{
//        return super.description + " With gear: \(gear)"
//    }
//
//    // Instance method overrides a 'final' instance method
////    override func seat(){
////        print("Speed for Bike")
////    }
//
//
//}
//
//var bike1 = Bike()
//bike1.speed()
//print(bike1.description)


/*
 
 Preventing Overrides
 You can prevent a method, property, or subscript from being overridden by marking it as final. Do this by writing the final modifier before the method, property, or subscript’s introducer keyword (such as final var, final func, final class func, and final subscript).

 Any attempt to override a final method, property, or subscript in a subclass is reported as a compile-time error. Methods, properties, or subscripts that you add to a class in an extension can also be marked as final within the extension’s definition.

 You can mark an entire class as final by writing the final modifier before the class keyword in its class definition (final class). Any attempt to subclass a final class is reported as a compile-time error.
 
 
 */






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

/* In Swift do...while loop mean repeat...while */


//var x = 0
//while x <= 3 {
//    print(x)
//    x += 1
//}

//var y = 0
//repeat {
//    print(y)
//    y+=1
//}while y <= 5

//for i in 0...10{
//    print(i)
//}

/*If we want to increment after 4 step then we write in other language like this:
for(i=0;i<15;i+=4)
*/
// But in Swift we will write that by this type:

//for i in stride(from: 0, to: 15, by: 4){
//    print(i)
//}

// let number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
//for num in number{
//    if num % 2 == 0{
//        print(num)
//    }
//}


//for (index,value) in number.enumerated(){
//    print("The value of the \(index) is \(value)")
//}



// How to print Floyd’s triangle?
//let n = 4
//
//for i in 0..<n{    // we can write for i  in 0...n-1
//    for _ in 0...i{
//        print("*")
//    }
//    print("\n")
//}


//let searchedchar:Character = "a"
//
//switch searchedchar{
//case "A":
//    print("The Char is A")
//case "r","R":
//    print("The Char is R/r")
//default:
//    print("Not a char")
//}





//let num = 8
//switch num % 2 == 0 {
//case true :
//    print("Number is Even")
//case false :
//    print("Number is not Even")
//default :
//    print("Not a Number")
//}

//
//let number = 5
//
//switch number{
//case 0:
//    print("Number is Zero")
//case 1..<5:
//    print("Within 1 to 5 but not 5")
//case 6...10:
//    print("Within 6 to 10")
//default:
//    print("Non")
//}

//let somePoint = (1, 1)
//switch somePoint {
//case (0, 0):
//    print("\(somePoint) is at the origin")
//case (_, 0):
//    print("\(somePoint) is on the x-axis")
//case (0, _):
//    print("\(somePoint) is on the y-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is inside the box")
//default:
//    print("\(somePoint) is outside of the box")
//}

//let someCharacter: Character = "0"
//switch someCharacter {
//case "a", "e", "i", "o", "u":
//    print("\(someCharacter) is a vowel")
//case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
//     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
//    print("\(someCharacter) is a consonant")
//default:
//    print("\(someCharacter) isn't a vowel or a consonant")
//}


//let integerToDescribe = 5
//var description = "The number \(integerToDescribe) is"
//switch integerToDescribe {
//case 2, 3, 5, 7, 11, 13, 17, 19:
//    description += " a prime number, and also"
//    fallthrough
//default:
//    description += " an integer."
//}
//print(description)




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

/*
 Optional variable use kole must oi variable er jnno amader conditional
 unwrapping use kore oi optional value k use korte hbe or oi optional variable er
 jnno nil condition set kore handle korte hbe.
 
 ! mean unwrapped
 
 */

//var age : Int?
//
//age = 10
//
//// Handle optional variable by simple nil condition
//if (age != nil){
//    print("Age is \(age!)")
//}else{
//    print("Age is nil")
//}
//
//// Handle optional variable by unwrapping
//if let unWarppedAge = age {
//    print("Age is \(unWarppedAge)")
//}
//else{
//    print("Age is nil")
//}










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
////
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

// Empty String Initilization

//var emptyString1 = ""
//var emptyString2 = String()

//print(emptyString2)

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



// String Compare
//var fName = "Auntor"
//var nickName = "Ontu"
//
//if fName == nickName {
//    print("same")
//}else{
//    print("Not Same")
//}


////////////////////////////////////// Array & Dictionaries

// Array

//var a = [1,2,3,4]
//print(a)
//var b:[Int] = [1,2,3,4,5]
//print(b)
//
//var details:[String] = ["Auntor","Acharja"]
//print(details)

// print(details.index(of:"Aunor"))

//if let x = details.index(of:"Aunor"){
//    print(x)
//}

//var info:[Any] = ["Auntor","Acharja",24,0179,6.00,82.0000,true,false]
//print(info[4])




//var number:Array<Int> = [12,13,56,67,43,23,89]
//print(number[0])
//number.count
//number.last
//number.append(50)
//number.insert(40, at: 1)


//// Dictionaries

//Dictionary Initilization
//var dic:Dictionary<String,String> = Dictionary<String,String> ()
//var dic1:[String:String] = [:]

//var myInfo1 = ["name":"Auntor","Age":"24"]
//print(myInfo1)
//
// var myInfo2:[String:Int] = ["name":3,"Age":7]
//
//for myInfo in myInfo2{
//    print(myInfo)
//}

//for (key,value) in myInfo2{
//    print(key)
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

//var nums:Set<Int> = [10,34,56,78,34,10]
//var numSet = Set(nums)
//
//for num in nums{
//    print(num)
//}
//
//for num in nums.sorted(){
//    print(num)
//}
//
//
//numSet.insert(80)
//print(numSet)
//numSet.contains(10)
//numSet.remove(34)
//print(numSet)

//let oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//
//oddDigits.union(evenDigits).sorted()
//// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//oddDigits.intersection(evenDigits).sorted()
//// []
//oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
//// [1, 9]
//oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
//// [1, 2, 9]

//////////////////////// Semicolons

// var name = "Auntor" print(name) // This can not be possible, through a error
//var age = 24; print(age)

////////////////// Numeric Literals

//let decimalInteger = 17
//let binaryInteger = 0b10001       // 17 in binary notation
//let octalInteger = 0o21           // 17 in octal notation
//let hexadecimalInteger = 0x11     // 17 in hexadecimal notation



//////////////////////////////////// Error Handiling

//enum VendingMachineError: Error {
//    case invalidSelection
//    case insufficientFunds(coinsNeeded: Int)
//    case outOfStock
//}
//
//throw VendingMachineError.insufficientFunds(coinsNeeded: 5)


////////////////////////////// class function/Method
/*
 
 class function kono class er vitore define korte hoy. function k class diye likhte hoy. tahole oi function k call korar jnno r oi class er kono object create korte hoy na direct class er name diye dot dille oi class function er access pawa jay.
 
 */



// Without class function
//class Car{
//    func doSomting(){
//        print("Print from class")
//    }
//}
//var myCar = Car()
//myCar.doSomting()



//// With class function
//class Car2{
//    class func doSomting(){
//        print("Print from class")
//    }
//}
//
//Car2.doSomting()











////////////////////////////// Extensions
/*
 Existing Kono class, struct, protocol er moddhe new kono functionality like new Kono function/variable create korte hole amader oi class, protocol, struct k extension diye create korte hoy.
 */



// Example-1:
//class Student{
//    func SName(){
//        print("Callling SName function")
//    }
//}


//extension Student{
//    func newAddedFunction(){
//        print("This Function added from extensions")
//    }
//}
//
//var myObj = Student()
//myObj.newAddedFunction()
//myObj.SName()


// Example-2:
// In this example, i am using extension inside built-in String class
//extension String{
//
//    // Computed property
//    var isPasswordOkay:Bool{
//        let numberOfChar = self.count
//        if(numberOfChar > 6 && numberOfChar < 10){
//            return true
//        }else{
//            return false
//        }
//    }
//}
//
//var myPass: String = "Auntor Acharja"
//print("Password Boundary is Okay? \(myPass.isPasswordOkay)")




////////////////////////  Practice

//func loveCalculator(){
//let loveScore:Int = Int.random(in: 0...100)
//    print(loveScore)
//
//
//    if loveScore > 80 {
//        print("You love each other like Kanye loves Kanye")
//    }else if loveScore > 40 && loveScore < 80 {
//        print("You go together like Coke and Mentos")
//    }
//    else if loveScore < 40 {
//        print("You will be forever alone")
//    }
//
//
//
//}
//
//loveCalculator()



/////////////////////////////// Clousers


// Normal Function

//func addTwoNumber(num1:Int,num2:Int) -> Int {
//    return num1 + num2
//}
//
//print(addTwoNumber(num1:10,num2:30))


// Clouser

//var addTwoNumber:(Int,Int) -> Int = {
//    (num1,num2) in return num1 + num2
//}
//
//print(addTwoNumber(12,50))




//////////////////////  Getter/Setter/ Compound Properties


//let pizzaInInches:Int = 10
// Compound Properties
//var numberOfSlice: Int {
//    get{
//        return pizzaInInches - 5
//    }
//    set{
//        print("This one Set")
//    }
//}
//
//print(numberOfSlice)
//numberOfSlice = 56

//
//let pizzaInInches:Int = 10
//// Compound Properties
//var numberOfSlice: Int { return pizzaInInches - 5 }
//print(numberOfSlice)
// numberOfSlice = 56            // Cannot assign to value: 'numberOfSlice' is a get-only property



//////////////////// Touples

/*
 Touples one kind of Data Structure
 
 */

//let touple1 = ("Auntor",24)
//print(touple1.0)
//
//let touple2 = (name:"Auntor",university:"DIU")
//print(touple2.university)
//
//let touple3:(nickName:String,number:Int)
//touple3.nickName = "ONTU"
//print(touple3.nickName)


