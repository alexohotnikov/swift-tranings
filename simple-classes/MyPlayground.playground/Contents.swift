class Animal {
    var name: String
    var age: Int
    
    init(_ name: String, _ age: Int = 10) {
        self.name = name;
        self.age = age
    }
    
    func info() -> String {
        return "I'am \(self.name) and my age is \(self.age)"
    }
}

class Men:Animal {
    var workAt: String
    var lastName: String
    
    init(_ name: String, _ lastName: String, age: Int, workedAt work:String) {
        self.workAt = work
        self.lastName = lastName
        super.init(name, age);
    }
    
    override func info() -> String {
        return "Hello, I'am \(self.name) and I worked at \(self.workAt)!"
    }
}

let Paul = Men("Paul", "Johnson", age: 10, workedAt: "Vk.com")
print(Paul.info())
let monkey = Animal("John", 33)
print(monkey.info())
