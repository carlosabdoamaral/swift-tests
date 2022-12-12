func plataform() {
    var n : Int = 0
    if let input = readLine() {
        if let nAsInt = Int(input) { n = nAsInt }
    }
    
    
    var plataformsAsStr : [String] = []
    var plataformsAsInt : [Int] = []
    let inputArr = readLine()?.split{ $0 == " "}.map(String.init)
    if let inputStrArr = inputArr { plataformsAsStr = inputStrArr }
    for p in plataformsAsStr {
        if let pAsNumber = Int(p) {
            plataformsAsInt.append(pAsNumber)
        }
    }
    
    var currentIndex : Int = 0
    var currentPositionJumpPossibilitie = plataformsAsInt[currentIndex]
    var moves : Int = 0
    
    while currentPositionJumpPossibilitie < plataformsAsInt.count {
        var options : [Int] = []
        var ids : [Int] = []

        for i in currentIndex..<currentPositionJumpPossibilitie {
            options.append(plataformsAsInt[i + 1])
            ids.append(i + 1)
        }
        
        var bestOption = 0
        for id in ids {
            var max = options.max()
            
            if options[id - 1] == max {
                bestOption = id
            }
        }
        
        currentPositionJumpPossibilitie = plataformsAsInt[bestOption]
        currentIndex += bestOption - 1
        moves+=1
    }
    
    print(moves)
}

var x = plataform()
