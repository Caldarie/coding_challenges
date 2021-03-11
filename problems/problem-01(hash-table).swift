
import Foundation

func getItinerary(tickets:[[String]]) -> [String] {
    var flights:[String:String] = [:]
    tickets.forEach {flights[$0.first ?? "NONE"] = $0.last}
    let departures = Set<String>(flights.keys)
    let destinations = Set<String>(flights.values)
    let origin = departures.subtracting(destinations)
    let finalDestination = destinations.subtracting(departures).first! // Not safe
    var currentDeparture:String = origin.first! // not safe
    var itinerary:[String] = [currentDeparture]
    while currentDeparture != finalDestination {
        let nextDest = flights[currentDeparture] ?? ""
        itinerary.append(nextDest)
        currentDeparture = nextDest
    }
    return itinerary
}

