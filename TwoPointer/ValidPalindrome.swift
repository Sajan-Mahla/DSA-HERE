func ValidPalindrome(_ s: String) -> Bool{
    let cleaned = s.lowercased().filter{
        $0.isLetter || $0.isNumber
    }

    let chars = Array(cleaned)
    var left = 0
    var right = chars.count - 1

    while left < right {
        if chars[left] != chars[right]{
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

/*
explanation: pehle func liya, parameter liya vohi sab purani baate, phir lagaya cleaned isme 3 condition hogi- pehle lowercased hoga phir ya to letter 
chayiye ya to number 

phir usko array mai store krna taki iteration easy ho
 phir left = 0
 right = chars.count -1
  
 left agge se chalega right piche se 

 phir ek loop agge se piche tak {while left < rigth}

 phir bas ek condition ki agge wala samme hai piche wale se. nhi to false, 
 aur haa to true

 phir leftt right ko agge bdahanna hai. += 1, -= 1

 end mai true dena hai coz ek hi condition hai aur londa vo bhi pass kar gya 
 HAPPY ENDING
*/