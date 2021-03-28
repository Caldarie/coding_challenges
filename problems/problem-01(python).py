#generally speaking you shouldn’t hardcode strings like “SFO” (line 14) if not needed. 
#Also it’s good to check for inconsistencies at the user data (handle them or raise errors). 
#Another thing is that the logic behind the algorithm isn’t very clear. I’m not that familiar with SWIFT so I send a simple example in python:


ticket = [["RED", "BLU"], ["LAX", "HNL"], ["SFO", "LAX"], ["NRT", "RED"], ["HNL", "NRT"]]
def get_intinerary(ticket):
    depts = set([flight[0] for flight in ticket])
    dests = set([flight[1] for flight in ticket])
    if len(depts) != len(ticket) or len(dests) != len(ticket):
        raise RuntimeError('The ticket has incosistencies. please check again!')
    # get initial departure city. it is the departure that is no destination of any flight
    dept = depts.difference(dests)
    if len(dept) != 1:
        raise(RuntimeError('There can be exactly one initial departure city: ' + str(dept)))
    # make a list with the first departure and add the next ones from the flights dictionary
    cities = list(dept)
    flights_dict = {dept: dest for (dept, dest) in ticket}
    for flight in ticket:
        if cities[-1] not in flights_dict:
            raise RuntimeError('There is no destination city from: ' + cities[-1])
        cities.append(flights_dict[cities[-1]])
    return cities
get_intinerary(ticket)
# returns ['SFO', 'LAX', 'HNL', 'NRT', 'RED', 'BLU']


#one simple way is to try to remove nested clauses (ifs/whiles/fors etc). 
#at some points you have up to 4 levels of nested clauses, this makes things difficult to follow. 
#at the sample code I sent (if you remove the error handling) there is only one for loop, no nested functional clauses
