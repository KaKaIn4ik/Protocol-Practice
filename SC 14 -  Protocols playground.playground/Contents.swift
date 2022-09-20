import UIKit

protocol Movable {
	func run()
}

protocol Fightable {
	func fight()
}

protocol Hero: Movable, Fightable {
	var name: String { get }
}

struct Fermer: Movable {
	func run() {
		print("Farmer: Run")
	}
}

struct Cook: Movable {
	func run() {
		print("Cook: Run")
	}
}

struct Butcher: Fightable {
	func fight() {
		print("Butcher: fight")
	}
}

struct Boxer: Fightable {
	func fight() {
		print("Boxer: fight")
	}
}

struct Karateka: Hero {
	var name: String
	
	func run() {
		print("Karate: Run")
	}
	
	func fight() {
		print("Karate: fight")
	}
}

struct Dancing: Hero {
	var name: String
	
	func run() {
		print("Dancing: Run")
	}
	
	func fight() {
		print("Dancing: fight")
	}
}

class Tavern {
	var fighters: [Fightable] = []
	var movers: [Movable] = []
	
	func enterTavern(hero: Hero) {
		hero.fight()
		for number in movers {
			number.run()
		}
		for numberTwo in fighters {
			numberTwo.fight()
		}
	}
}

var alice = Fermer()
var tom = Cook()
var bil = Butcher()
var shell = Boxer()
var dasha = Karateka(name: "Dasha")
var cim = Dancing(name: "Cim")
var taverna = Tavern()

taverna.fighters
var newMovers = taverna.movers
newMovers.append(alice) 
newMovers.append(tom)
taverna.movers = newMovers

var newFighters = taverna.fighters
newFighters.append(bil)
newFighters.append(shell)
taverna.fighters = newFighters

taverna.enterTavern(hero: cim)
taverna.enterTavern(hero: dasha)


