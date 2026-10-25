func makeTransactionFilter(threshold: Int) -> (Int) -> Bool {     if t in threshold{
    return t > threshold
} }




func processTransactions(_ amounts: [Int], filter: (Int) -> Bool) -> (filteredTotal: Int, count: Int) {
    var total = 0
    var matchingCount = 0
    
    for amount in amounts {
        if filter(amount)
        {
            total += amount
            matchingCount += 1
        }
    }
    return (total, matchingCount) }
