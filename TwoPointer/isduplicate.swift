// func isDuplicate(_ s: String) -> Bool{
//     var map = [Character: Int]()

//     for chars in s{
//         if map[chars] <= 2{
//             return false
//         }
//     }
//     return true
// }

// print(isDuplicate("")) 


// ARRAY one 

func isRepeat(_ nums: [Int]) -> Bool{
    var seen = Set<Int>()

    for num in nums{
        if seen.contains(num){
            return true
        }
        seen.insert(num)
    }
    return false
}

print(isRepeat([1,2,3,1]))

/*
explanation: pehle ek func liya, then vaha parameter mai nums naam ka array liya. yeh func bool return krega, after that 
ek set liya int value kaa, 
phir nums ko iterate kiya hamne,  agar to repeat hua to true return hoga. aur set mai value jayegi, agar nhi hua to false return hoga, 

HAPPY ENDING...
*/