var teamMembers: [Int: [String]] = [
    1: ["John", "25", "USA", "180"],
    2: ["Maria", "28", "Canada", "175"],
    3: ["Elena", "23", "Spain", "170"],
    4: ["James", "30", "USA", "185"],
    5: ["Sophia", "22", "Canada", "170"],
    6: ["Carlos", "26", "Spain", "175"],
    7: ["Emily", "29", "USA", "170"],
    8: ["Liam", "24", "Canada", "180"],
    9: ["Isabella", "31", "Spain", "165"],
    10: ["Daniel", "27", "USA", "178"],
    11: ["Olivia", "24", "Canada", "172"],
    12: ["Miguel", "29", "Spain", "175"],
    13: ["Aiden", "26", "USA", "183"],
    14: ["Sophia", "28", "Canada", "170"],
    15: ["Lucas", "25", "Spain", "177"],
    16: ["Ava", "23", "USA", "168"],
    17: ["Benjamin", "27", "Canada", "175"],
    18: ["Emma", "30", "Spain", "165"],
    19: ["William", "25", "USA", "180"],
    20: ["Grace", "29", "Canada", "170"]
]


var playersSortedByAge: [(Int, [String])] = []
for (number, playerInfo) in teamMembers {
    playersSortedByAge.append((number, playerInfo))
}

playersSortedByAge.sort { $0.1[1] < $1.1[1] }


var playersSortedByCountry: [(Int, [String])] = []
for (number, playerInfo) in teamMembers {
    playersSortedByCountry.append((number, playerInfo))
}

playersSortedByCountry.sort { $0.1[2] < $1.1[2] }


var totalAge = 0
for playerInfo in teamMembers.values {
    if let age = Int(playerInfo[1]) {
        totalAge += age
    }
}

let averageAge = Double(totalAge) / Double(teamMembers.count)


var totalHeight = 0
for playerInfo in teamMembers.values {
    if let height = Int(playerInfo[3]) {
        totalHeight += height
    }
}

let averageHeight = Double(totalHeight) / Double(teamMembers.count)


print("Players sorted by age:")
for (number, playerInfo) in playersSortedByAge {
    print("Number: \(number), Name: \(playerInfo[0]), Age: \(playerInfo[1])")
}

print("\nPlayers sorted by country:")
for (number, playerInfo) in playersSortedByCountry {
    print("Number: \(number), Name: \(playerInfo[0]), Country: \(playerInfo[2])")
}

print("\nAverage age of players: \(averageAge)")
print("Average height of players: \(averageHeight)")
