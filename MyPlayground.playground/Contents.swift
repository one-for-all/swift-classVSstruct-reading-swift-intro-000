//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Problem 1
// Will not run, because homePlanet property is a constant

// Problem 2

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")
fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

// Problem 3
// Will not run, because it's declared a constant

// Problem 4
struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}
var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

// Problem 5
// Both will be Jason, because class is reference type
let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"
print("edgar.name is \(edgar.name)")
print("jason.name is \(jason.name)")

// Problem 6
// Charles's homeplanet is still Pluto
// CharlesFromJupiter's homeplanet will be Jupiter
var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"
print("charles.homePlanet is \(charles.homePlanet)")
print("charlesFromJupiter.homePlanet is \(charlesFromJupiter.homePlanet)")

// Problem 7
// Not work, because struct's methods cannot be mutating unless with mutating prefix

// Problem 8
struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

// Problem 9
var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)
print("joe's account is \(joeAccount.balance)")
print("joe's other account is \(joeOtherAccount.balance)")

// Problem 10
class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}
let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")
print(library1.tracks)
print(library2.tracks)

