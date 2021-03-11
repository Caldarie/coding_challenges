//
//  main.swift
//  Oplus
//
//  Created by Michael Nguyen on 2021/02/27.
//

import Foundation

let boardTicket = [["RED", "BLU"], ["LAX", "HNL"], ["SFO", "LAX"], ["NRT", "RED"], ["HNL", "NRT"]]

func getIntinerary(_ dest: [[String]]) -> [String]{
    
    let intialDestination = "SFO"
    var result: [String] = []
    var remainingDest = boardTicket
    var lastString: String = ""
    var left = 0
    var right = remainingDest.count - 1
    
    
    while (right >= 0){
        
        //check if desination has SFO
        if(remainingDest[left].contains(intialDestination)){
            print("a")
            //iterates the inner array and records the last string to check duplicates
            for (index, destination) in remainingDest[left].enumerated(){
                result.append(destination)
                if index == remainingDest[left].endIndex-1{
                    lastString = destination
                }
            }
            //Removes the destination from the array
            remainingDest.remove(at: left)
            left = -1 //resets index
            right -= 1
        }
        //check if remaining destinations contain last string
        else if(remainingDest[left].contains(lastString)){
            print("b")
            //iterates the inner array, remove duplicate and records the last string
            for (index, destination) in remainingDest[left].enumerated(){
                if (destination != lastString){
                    result.append(destination)
                }
                //if last index, updates last string
                if index == remainingDest[left].endIndex-1{
                    lastString = destination
                }
            }
            
            //Removes the destination from the array
            remainingDest.remove(at: left)
            left = -1 //resets index
            right -= 1
            
        }else{
            print("c")
            
        }
        
        //adjust size of array, and increment left pointer
        
        left += 1
        
    }
    
    return result
}

print(getIntinerary(boardTicket))
