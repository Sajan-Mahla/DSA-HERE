class RecentQueue{
    var queue = [Int]()

    init(){

    }

    func ping(_ t: Int) -> Int{
        queue.append(t)

        while !queue.isEmpty && queue.first! < t - 3000{
            queue.removeFirst()
        }

        return queue.count
    }


}

