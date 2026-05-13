struct Queue<T> {
 private var items: [T] = []

 mutating func enqeue(_ item: T){
   return items.append(item)
 }

@discardableResult
 mutating func deqeue() -> T?{
 guard !items.isEmpty else {return nil}
 return items.removeFirst()
 }

 var front: T?{
    return items.first
 }

 var isEmpty: Bool{
    return items.isEmpty
 }

 var count: Int{
    return items.count
 }
}

var queue = Queue<String>()

queue.enqeue("Sajan")
queue.enqeue("Mahla")
queue.enqeue("Sam")

print(queue.front ?? "Queue is empty")

queue.deqeue()
queue.deqeue()

print(queue.front ?? "Queue is empty")

print(queue.isEmpty)
print(queue.count)