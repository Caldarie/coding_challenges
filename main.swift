//
//  main.swift
//  coding-challenges
//
//  Created by Michael Nguyen on 2021/03/11.
//

import Foundation

//Problem 1
let boardTicket = [["RED", "BLU"], ["LAX", "HNL"], ["SFO", "LAX"], ["NRT", "RED"], ["HNL", "NRT"]]
let itinerary = getIntineraryTwoPoint(boardTicket: boardTicket)
assert(itinerary == ["SFO", "LAX", "HNL", "NRT", "RED", "BLU"] )



