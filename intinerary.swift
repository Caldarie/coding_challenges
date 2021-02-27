//
//  main.swift
//  Oplus
//
//  Created by Michael Nguyen on 2021/02/27.
//

import Foundation

let boardTicket = [["LAX", "HNL"], ["SFO", "LAX"], ["HNL", "NRT"]]

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
            
            //iterates the inner array and records the last string to check duplicates
            for (index, destination) in remainingDest[left].enumerated(){
                result.append(destination)
                if index == remainingDest[left].endIndex-1{
                    lastString = destination
                }
            }
            //Removes the destination from the array
            remainingDest.remove(at: left)
            left = 0 //resets index
        }

        //check if remaining destinations contain last string
        if(remainingDest[left].contains(lastString)){

            //iterates the inner array, remove duplicate and records the last string
            for (index, destination) in remainingDest[left].enumerated(){
                if (destination != lastString){
                    result.append(destination)
                    left = 0 //resets index
                }
                //if last index, updates last string
                if index == remainingDest[left].endIndex-1{
                    lastString = destination
                }
            }
        }
        
        //adjust size of array, and increment left pointer
        right -= 1
        left += 1
     
    }
    
    return result
}

print(getIntinerary(boardTicket))









