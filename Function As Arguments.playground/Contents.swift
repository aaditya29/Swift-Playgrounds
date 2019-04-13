//: Playground - noun: a place where people can play

import Cocoa

/*
    Functions can serve as arguments to other functions.
*/
let volunteerCounts = [1,3,40,32,2,53,77,12]
let volunteersSorted = volunteerCounts.sorted {$0 < $1}
func makeTownGrand(withBudget budget: Int,
                   condition: (Int) -> Bool) -> ((Int, Int)) -> Int
{
    if condition(budget){
        func buildRoads(byAddingLights lights: Int,
                        toExistingLights existingLights: Int) -> Int
        {
        return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
    func evaluate(budget: Int) -> Bool{
        return budget > 10_000
    }
    var stoplights = 4
    if let townPlanByAddingLightsToExistingLights =
}
