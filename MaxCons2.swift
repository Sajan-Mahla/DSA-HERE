func Mc2(_ nums: [Int])-> Int{
    var count = 0
    var count1 = 0

    for i in 0..<nums.count{
        if nums[i] == 1{
            count += 1
        }else {
            count = 0
        }
        count1 = max(count, count1)
    }
    return count1
}