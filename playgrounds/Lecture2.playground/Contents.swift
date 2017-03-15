//: Playground - noun: a place where people can play

import UIKit

/*
 Какво е playground?
 
 Това вид проект, който се изпозлва от xCode. Интерактивно показва какво е състоянието на паметта на компютъра във всеки един ред на изпълнение на код-а. Позволява лесно онагледяване на примерния код. Много по лесно може да се анализира кода. Можем да скицираме проблеми и техните решения, които да използваме за напред.
 
 */



// Лекция 2
// курс: Увод в прогрмаирането със Swift

//коментар на един ред

/*
 коментар
 на
 няколко
 реда
 */

let zeroValue = 1

var integerValue = 1 + 42.0


//декларираме по няколко променливи
var x = 0, y = 5

//декларираме по няколко константи
let a = 1, b = 3

/*
 
 Добра практика:
 
 По-прегледно е да декларираме по една променлива или константа на ред, понеже кодът е по-четлив. Когато сме в Playground виждаме и съответната стойност, която стои в паметта.
 */


let `let` = 15
var `var` = 12


let variable1 = 123

let 😼 = "cat"
let котка = "😼"
/*
 
 Добра практика:
 
 Добре е кода на програмите да е написан на един език, който ще е разбираем от всички работещи над програмата. Хубаво е да се използва английски, но не е задължително. Пропръчително е дори коментарите да са на един език, за да може в последствие лесно да се разбира код-а на програмата.
 
 Интересно:
 
 Прогрманият код се пише, но по-често се чете. Такъв е случаят и с вашите домашни или проекти. Вие го пишете и четете. После проверяващите го четат, дори и вашите колеги и те си позволява да му хвърлят някой друг поглед. Всеки един програмист е творец, който твори програмен код.
 
 */

//Целочислен тип Int


//следват различните типове, поризводни на Int

var uint8:UInt8 = 18
uint8 = 0
//uint8 = -1 // грешка, понеже -1 е негативно число

var int32:Int32 = -35
uint8 = 32
//int32 = 32 + uint8 // грешка, понеже нямаме право да събираме различни типове, без да обявим начин за преминаване към общ тип
int32 = 32 + Int32(uint8)


//тип дробни числа
let pi:Float = 3.1415

let randomFloat = 5.121233

//ето как да проверим типа на променлива или константа
type(of:randomFloat)
type(of:pi)
type(of:int32)


// синтаксиса ?? се оценява, с дясната стойност на израза, само ако първата част е nil. За повече информация виж частта за Optionals

//конвертиране на числата в символи
let A = "A"
let codeOfA = Int(("A" as UnicodeScalar).value)
print(A.utf8.first?.toIntMax() ?? -1)
print(A.utf16.first?.toIntMax() ?? -1)
print(A.unicodeScalars.first?.isASCII ?? false)
let codeOfB = codeOfA + 1
let codeOfZ = codeOfA + 25 // 26 букви, от A до Z включително
print(Character(UnicodeScalar(codeOfB)!))
print(Character(UnicodeScalar(2 + codeOfA)!))
print(Character(UnicodeScalar(codeOfZ)!))


let helloWorld = "Hello 🌍!"
//utf-8
print(helloWorld.utf8.dropFirst(6).first ?? -1)
print(helloWorld.utf8.dropFirst(7).first ?? -1)
print(helloWorld.utf8.dropFirst(8).first ?? -1)
print(helloWorld.utf8.dropFirst(9).first ?? -1)
print(helloWorld.utf8.dropFirst(10)) //!

//utf-16
print(helloWorld.utf16.dropFirst(6).first ?? -1)
print(helloWorld.utf16.dropFirst(7).first ?? -1)
print(helloWorld.utf16.dropFirst(8))//!

//
print(helloWorld.unicodeScalars.dropFirst(6).first ?? -1)
print(helloWorld.unicodeScalars.dropFirst(7))//!


let hi = "hi"
let how = "how are you?"

let hiHowAreYou = hi + ", " + how


//Задача 1
let squareA = 7 //страна на квадрат
let squarePerimeter = squareA * 4 //обиколката на квадрат

//отпечатване на обиколката на квадрат

print("Обиколката на квадрат със страна \(squareA) е \(squarePerimeter).")

let rectangleA = 3 //късата страна
let rectangleB = 6 //дългата страна
let rectanglePerimeter = 2 * ( rectangleA + rectangleB) //обиколката на правоъгълник

print("Обиколката на правоъгълник със страни \(rectangleA) и  \(rectangleB) е \(rectanglePerimeter).")

let triangleA = 6 //страната на триъгълника
let equilateralTrianglePerimeter = 3 * triangleA // обиколката на триъгълника


//ето и как изглеждат нещата за лице на същите фигури

let squareArea = squareA * squareA

let rectangleArea = rectangleA * rectangleB

let doubleTriangleA = Double(triangleA) // експлицитно преминаваме от единя тип към другия

let equilateralTriangleArea = Double(triangleA * triangleA) * sqrt(3) / 4 //преминаване от цели, към реални числа


let radius:Float = 8.0
// pi е декларирано по-горе в програмата и има стойност 3.1415
let circlePerimeter =  pi * radius * 2

let sphereVolume = 4 / 3 * pi * radius * radius * radius


// пример за забавна програма на Swift
let 🤗 = "Hello"
let 🌍 = "world"

print(🤗, 🌍)


let numberOne: Int? = Optional.some(1)
let nothing: Int? = Optional.none

let nothing2: Int? = nil

if(nothing == nil) {
    print("Няма стойност в константата nothing.")
}

var aX:Double = 3, bool:Bool = true
//var aX = 3.0, bool = true
print(aX);
print(type(of:aX))
print(bool);
print(type(of:bool))

var aLine:Int; var bLine:Double

//декрариране на няколко променливи на един ред
var a1:String, b1:Double, sum1: Int

let s1, s2 :String
s1 = "hello"
a1 = "hello"
b1 = 2
sum1 = 2 * Int(b1)


