// another way for best time to buy and sell stocks


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minprice = Int.max
        var maxprofit = 0

        for currentprice in prices{
            minprice = min(currentprice, minprice)
            maxprofit = max(maxprofit, currentprice - minprice)
        }

        return maxprofit
    }

}
