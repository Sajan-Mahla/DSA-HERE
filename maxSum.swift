// func MaxSum(_ nums: [Int])-> Int{
//     guard nums.count >= 3 else {return 0}

//     let k = 3

//     var WindowSum = nums[0..<k].reduce(0,+)
//     var MaxSum = WindowSum

//     for i in k..<nums.count{
//         WindowSum += nums[i]
//         WindowSum -= nums[i - k]
//         MaxSum = max(WindowSum, MaxSum)
//     }

// return MaxSum



// }

// let lockers = [2, 4, 1, 7, 3, 5]
// print(MaxSum(lockers))


// func MaxSum(_ nums: [Int])->Int{
//     guard nums.count >= 2 else {return 0}

//     let k = 2

//     var WindowSum = nums[0..<k].reduce(0,+)
//     var MaxSum = WindowSum

//     for i in k..<nums.count{
//         WindowSum += nums[i]
//         WindowSum -= nums[i - k]
//         MaxSum = max(WindowSum,MaxSum)
//     }
//     return MaxSum


// }

// let test1 = [1, 3, 2, 6, 4, 8, 5]  // expected: 13 ✅
// let test2 = [5, 5, 5, 5]            // expected: 10 ✅
// let test3 = [1, 2]                  // expected: 3  ✅
// let test4 = [10, 1, 1, 1]           // expected: 11 ✅
// let test5 = [3, 7, 2, 9, 1]         // expected: 11 ✅

// print(MaxSum(test1))
// print(MaxSum(test2))
// print(MaxSum(test3))
// print(MaxSum(test4))
// print(MaxSum(test5))


func MaxSum(_ nums: [Int], _ k:Int)->Int{
    guard nums.count >= k else {return 0}

    var WindowSum = nums[0..<k].reduce(0,+)
    var MaxSum = WindowSum

    for i in k..<nums.count{
        WindowSum += nums[i]
        WindowSum -= nums[i-k]
        MaxSum = max(WindowSum,MaxSum)
    }

    return MaxSum
}
let test1 = [1, 4, 2, 9, 7, 3, 8, 6]
let k1 = 4

let test2 = [5, 5, 5, 5, 5]
let k2 = 3

let test3 = [1, 2, 3, 4, 5]
let k3 = 1

let test4 = [10, 2, 3, 1, 8]
let k4 = 2

let test5 = [1, 2]
let k5 = 2

print(MaxSum(test1, k1))
print(MaxSum(test2, k2))
print(MaxSum(test3, k3))
print(MaxSum(test4, k4))
print(MaxSum(test5, k5))