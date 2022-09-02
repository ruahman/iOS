import UIKit

var greeting = "Hello, playground"

var price = 10.99

// const
let test = 3.44

var amIGood = true

if true == true {
    print("treu")
}
print("hello worldd")

var empSal = [45000, 54000, 20000]

empSal.append(333)

print(empSal.count)

empSal.remove(at:1)

var students = [String]()

students.append("test")

var x = 0
repeat {
    x += 1
} while(x < 10)

for i in 0..<empSal.count {
    print(i)
}

for i in 1...5 {
    print("index: \(i)")
}

for x in empSal {
    print(x)
}

var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[4] = "four"

var airports: [String: String] = ["XYZ": "test", "LAX": "Los ageles"]

for (key, val) in airports {
    print(key,val)
}

for key in airports.keys {
    print(key)
}

// optionals

struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func printFullName() {
        let middle = middleName ?? "NA"
        print(firstName,middle,lastName)
    }
}

var aPerson = Person(firstName: "diego", middleName: nil, lastName: "vila")
aPerson.printFullName()


// objects and classes

class Vehicle {
    var tires = 4
    var headlights = 2
    
    func drive() {
        print("im driving here")
    }
    
    init(){
        print("init---")
    }
}

// inheritence

class BMW: Vehicle {
    
    var make = "BMW"
    
    override init() {
        super.init()
    }
    
    override func drive() {
        print("new drive")
    }
    
}

// enumerations

enum NameOfEnum {
    case one, two, three, vvv
}

let enumtest: NameOfEnum = .one

enum Barcode {
    case upc(Int, Int, Int)
    case qrCode(String)
}

var prodBarCode = Barcode.upc(1, 2, 3)

switch prodBarCode {
case let .upc(x, y, z):
    print(x,y,z)
case let .qrCode(foo):
    print(foo)
}

enum JediMaster: String {
    case yoda = "Yoda"
    case obiWan = "Ben"
    case luke = "Luke"
}
print(JediMaster.yoda)
print(JediMaster.yoda.rawValue)

enum SwitchStatus {
    case on
    case off
}

var switchStatus: SwitchStatus = .off

func flip(status: SwitchStatus) -> SwitchStatus {
    if status == .on {
        return .off
    }
    else {
        return .off
    }
}

flip(status: switchStatus)

// extentions, extent an existing class, structure

class MyClass {
}

extension MyClass {
    

}

extension String {
    func reverse() -> String {
//        var charArray = [Character]()÷
//        for char in self {
//
//        }
        return "foobar"
    }
}

extension Double {
    mutating func calcArea(){
        let pi = 3.1415
        self = pi * (self * self)
    }
}

// you can extend UIElements

// protocols

protocol Number {
    var floatValue: Float {
        get
    }
}

extension Float: Number {
    var floatValue: Float {
        return Float(self)
    }
}

var four: Float = 4.3
print(four.floatValue)

// override operators
//func +(val1: Number, val2: Number){
//    return val1.floatValue + val2.floatValue
//}

// protocols can inherit from other protocols

// you can use protocols to delegate messages

// use protocols to delegate information???

// a protocol is like a blue print

// a protocol is acting like a delegate between two controllers

protocol ColorTransferDelegage {
    func userDidChoose(color: UIColor, withName colorName: String)
}

var delegate: ColorTransferDelegage? = nil

delegate?.userDidChoose(color: UIColor.blue, withName: "foobar")

// think of it as segue between view controllers
func prepair(for segue: UIStoryboardSegue, sender: Any?){
    // seque from point A to point B
    if segue.identifier == "colorPicker" {
//        let colorPicker = segue.destination
//        colorPicker.delegate = self
    }
}
