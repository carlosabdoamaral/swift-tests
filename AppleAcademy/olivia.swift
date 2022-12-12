func olivia() -> Any {
    
    var bausCount : Int = 0
    var bausListStr : [String] = []
    var bausList : [Int] = []
    
    if let input = readLine() {
        if let inputAsInt = Int(input) {
            bausCount = inputAsInt
        }
    }
    
    let arr = readLine()?.split{$0 == " "}.map(String.init)
    
    if let stringArray = arr { bausListStr = stringArray }
    for k in bausListStr {
        if let kAsNumber = Int(k) {
            bausList.append(kAsNumber)
        }
    }
    
    var moves : Int = 0
    var newList : [Int] = []
    
    for (i, bau) in bausList.enumerated() {
        for (j, bau) in bausList.enumerated() {
            if abs(i - j) == 1 {
                moves += 1
            }
        }
    }
    
    return moves
}
