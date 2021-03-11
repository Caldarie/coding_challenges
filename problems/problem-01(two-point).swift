//Feedback 

// Big - O Reasoning - time complextiy
// 1. Running through the entire array to find the initialDestination, one by one. (Worstcase O(n))
// 2. After finding the initial destination, resets left to -1 (start of array) and call remove( O(n) apparently) and update destination.
// 3. Running through the entire array to find destination.  (O(n-1))
// 4. after finding destination, reset left to -1 and then update destination to the next destination. then call remove (O(n-1) )

// Another thing is that this code seems to assume that the entire list must be used, since right is not updated unless .contains(initialDestination)   or with lastString is actually found.

import Foundation

func getIntineraryTwoPoint(boardTicket: [[String]]) -> [String]{
    
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
            
            //resets left index
            left = -1
            
            //Removes the destination from the array and resize right index
            remainingDest.remove(at: left)
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
            
            //resets left index
            left = -1
            
            //Removes the destination from the array and resize right index
            remainingDest.remove(at: left)
            right -= 1 
            
        }else{
            print("c")
            
        }
        
        //iterate the index until the value matches the last string
        left += 1
        
    }
    
    return result
}
