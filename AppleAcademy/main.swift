func minNumberFunc () -> Int{
    var n : Int = 0
    var arrString : [String] = []
    var arrInt : [Int] = []
    let max = 10 * 10 * 10 * 10 * 10
 
    if let input = readLine() {
        if let inputAsint = Int(input) { n = inputAsint }
    } else { return 0 }
    
    let array = readLine()?.split {$0 == " "}.map (String.init)
    if let stringArray = array { arrString = stringArray }
    
    if arrString.count != n { return 0 }
    
    for k in arrString {
        if let asNumber = Int(k) { arrInt.append(asNumber) }
    }
    
    if 1 <= n && n <= max {
        let minNumber = arrInt.min()!
        var result = 0
    
        for (i, number) in arrInt.enumerated() {
            if 1 <= arrInt[i] && arrInt[i] <= max {
                if number == minNumber {
                    result+=1
                }
            }
        }
        
        return result
    } else {
        return 0
    }
    
    return 0
}

let result = minNumberFunc()
