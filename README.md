# Coding Challenges with Swift

## Problem 1 - Intinerary [Facebook - Medium]

Given an unordered list of flights, each represented as (origin, destination) pairs, and a starting airport, compute the person's itinerary. If no such itinerary exists, return null. If there are multiple possible itineraries, return the lexicographically smallest one. All flights must be used in the itinerary.

For example, given the list of flights [('SFO', 'HKO'), ('YYZ', 'SFO'), ('YUL', 'YYZ'), ('HKO', 'ORD')] and starting airport 'YUL', you should return the list ['YUL', 'YYZ', 'SFO', 'HKO', 'ORD'].

Given the list of flights [('SFO', 'COM'), ('COM', 'YYZ')] and starting airport 'COM', you should return null.

Given the list of flights [('A', 'B'), ('A', 'C'), ('B', 'C'), ('C', 'A')] and starting airport 'A', you should return the list ['A', 'B', 'C', 'A', 'C'] even though ['A', 'C', 'A', 'B', 'C'] is also a valid itinerary. However, the first one is lexicographically smaller.

1. [Two point Solution](problems/problem-01(two-point).swift) - **Needs to be fixed!** 
   * Problem 1: hardcoded string value "SFO". Avoid this!
   * Problem 2: Required to handle errors and inconsistencies (use assert to check for one intial departure city, or if the length of each array doesnt not match)
   * Problem 3: Four levels of nested clauses which make it difficult to follow. Try to aim for one.
2. [Hash Table Solution](problems/problem-01(hash-table).swift)
