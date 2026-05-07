func MaxProfit(_ prices: [Int]) -> Int{
    var MinPrice = Int.max
    var maxProfit = 0 

    for price in prices{
        if price < MinPrice {
            MinPrice = price
        }

        let profit = price - MinPrice

        if price > maxProfit{
            maxProfit = profit
        }
    }

    return maxProfit

}

print(MaxProfit([7,1,5,3,6,4]))