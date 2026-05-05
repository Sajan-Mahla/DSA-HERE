func twoSum(_ nums:[Int], _ target: Int) -> [Int]{
    var left = 0;
    var right = nums.count - 1

    while left < right{
        let Sum = nums[left] + nums[right]

        if Sum == target{
            return [left,right]
        } else if Sum < target{
            left += 1
        } else {
            right -= 1
        }
    }
    return []
}

/*
my explanation: pehle hum func baneyege twosum name se, then ham parameter rakhenge, ek nums; which is array of numbers [Sorted Numbers], then uske baad bad target ham target  
rakhenge jo ki sum hoga, -> [int]: iska matlab hai yeh strictly [ARRAY] hi dega return mai. 
yaha shuru hota hai asli code. 
abb ham do variable asign karege ek left ek right- left hoga jo 0 index se shuru hoga, uske baad right hoga jo piche se shuru hoga { jaise tum apni bandi ke piche se hote ho}

uske baad ham while loop shuru krdege- jisme ham ek constant assign krege Sum jo ki by product hoga left + right ka 

agar mil gya to happy happy [left,right ] dedege taki sab khush rahe aur panga na pade, {fucck, panga to mere relation mai padd gya tha leave}
agar nhi mila matlab sum se bada hua to leftt agge bhadega
agar chota hua to right piche jayega{jaise mai uske jata tha 😭}

end mai array return hoga coz of this ->[int] mf'
*/