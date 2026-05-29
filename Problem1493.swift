func longestSubarray(_ nums: [Int]) -> Int {
    var left = 0
    var ZeroCount = 0
    var MaxLength = 0

    for right in 0..<nums.count{
        if nums[right] == 0{
            ZeroCount += 1
        }

        while ZeroCount > 1{
            if nums[left] == 0{
                ZeroCount -= 1
            }
            left += 1
        }

        MaxLength = max(MaxLength, right - left)
    }
    return MaxLength
}
