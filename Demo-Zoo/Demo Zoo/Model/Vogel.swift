import Foundation

class Vogel : Animal {
    var name: String
    var image: String {
        return "\(name).jpg"
    }
    
    init(name: String, category: String) {
        self.name = name
        super.init(category: category)
    }
    convenience init(name: String) {
        self.init(name: name, category: "Vogel")
    }
}
