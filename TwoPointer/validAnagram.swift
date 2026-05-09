func ValidAnagram(_ s: String, _ t: String)-> Bool{
    if s.count != t.count{
        return false
    }

    var map = [Character: Int]()

    for char in s{
        map[char, default: 0] += 1
    }

    for char in t{
        if map[char] == nil{
            return false
        }

        map[char]! -= 1

        if map[char]! < 0{
            return false
        }
    }

    return true

}
/*

yeh le tera explanation : 
phele ham lenght check krege uske bina kya hi anagram,
then ek dictionary to store key value pairs. 
uske baad iterattion in s to check ki kitni baar kya aya, 
same for the t but thoda tagda checking ki nil hai -ve na ho kuch. then hamehsa ki tarah happy ending with a true
*/