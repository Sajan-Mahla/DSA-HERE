func MaxCons(_ nums:[Int], _ k: Int)->Int{
    var left = 0
    var ZeroCount = 0
    var MaxLenght = 0

    for right in 0..<nums.count{
        if nums[right] == 0{
            ZeroCount += 1
        }

        while ZeroCount > 0{
            if nums[left] == 0{
                ZeroCount -= 1
            }
            left += 1
        }

        let currentSize = right - left + 1
        MaxLenght = max(MaxLenght,currentSize)
    }
    return MaxLenght
}