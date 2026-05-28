// func NoDuplicacy(_ s: String)->Int{
//     var left = 0
//     var maxlen = 0
//     var seen = Set<Character>()

//     for right in 0..<s.count{
//         while  seen.contains(s[right]) {
//             seen.remove(s[left])
//             left += 1
//         }

//         seen.insert(s[right])

//         maxlen = max(maxlen, right - left + 1)
//     }
// }


func NoDuplicacy(_ s: String)-> Int{
    let chars = Array(s)
    var left = 0
    var maxlen = 0
    var seen = Set<Character>()

    for right in 0..<chars.count{
        while seen.contains(chars[right]){
            seen.remove(chars[left])
            left += 1
        }

        seen.insert(chars[right])

        maxlen = max(maxlen, right - left + 1)
    }
    return maxlen
}

let test1 = "abcabcd"  // expected: 4  (abcd)
let test2 = "aaaa"     // expected: 1  (a)
let test3 = "abcde"    // expected: 5  (abcde)
let test4 = "dvdf"     // expected: 3  (vdf)
let test5 = "z"        // expected: 1  (z)

print(NoDuplicacy(test1))
print(NoDuplicacy(test2))
print(NoDuplicacy(test3))
print(NoDuplicacy(test4))
print(NoDuplicacy(test5))