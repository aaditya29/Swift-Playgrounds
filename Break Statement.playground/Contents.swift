//: Playground - noun: a place where people can play

import Cocoa

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
        continue
    }
    if blasterFireCount > 100{
        blastersOverheating = true
        continue
    }
    //Fire blasters!
    print("Fire blasters!")
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}
