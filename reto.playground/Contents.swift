//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var reto=0...100
for n in reto{
    
    if n%5==0{
        print("\(n) Bingo!!!")
    }
    if n%2==0{
        print("\(n) par!!!")
    }
    if n%2 != 0{
        print("\(n) impar!!!")
    }
    if n >= 30 && n <= 40{
        print("\(n) Viva swift!!!")
    }
}