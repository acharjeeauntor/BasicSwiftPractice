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

func evenFunction(number:Int)->Bool{
    guard number % 2 == 0 else {return false}
        return true
}

print(evenFunction(number: 4))



