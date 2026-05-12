func Parenthesis(_ s: String) -> Bool{
    var stack: [Character] = []

    for char in s{
        if char == "("{
            stack.append(")")
        } else if char == "{"{
            stack.append("}")
        } else if char == "[" {
            stack.append("]")
        } else {
            if stack.isEmpty || stack.removeLast() != char {
                return false
            }
        }
    }
    return stack.isEmpty
}

print(Parenthesis("{[]}"))


/*
explanation: to pehle func banao, stack lagao khali, iterate karo then agar "(" to ")" append karo
agar "{" to "}" append karo
agar "[" to "]" append karo

aur edge case: agar yeh khali hai vaha tak iterate karte hue ya, char barabar nhi hai jo hona cchayiye (LAST ELEMENT)* ke to false return
end mai return karo stack.isEmpty matlab iteration successfully nikal gyi hai aur sab shi hai, matlab true

*/