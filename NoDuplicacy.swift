

func longestSubstring(_ s:[Character])->Int{
    var left = 0
    var maxLenght = 0
    var seen = Set<Character>()

    for right in 0..<s.count{

        while seen.contains(s[right]){
        seen.remove(s[left])
        left += 1
     }


        seen.insert(s[right])


        maxLenght = max(maxLenght, right - left + 1)
    }
    return maxLenght

  }

let test1: [Character] = ["a","b","c","a","b","c","d"]  // expected: ?
let test2: [Character] = ["a","a","a","a"]               // expected: ?
let test3: [Character] = ["a","b","c","d","e"]           // expected: ?
let test4: [Character] = ["a","b","a","c","d","b"]       // expected: ?
let test5: [Character] = ["z"]                           // expected: ?

print(longestSubstring(test1))
print(longestSubstring(test2))
print(longestSubstring(test3))
print(longestSubstring(test4))
print(longestSubstring(test5))