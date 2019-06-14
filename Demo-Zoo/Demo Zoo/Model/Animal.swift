import Foundation

class Animal {
    var category: String

    init(category: String) {
        self.category = category
    }
    convenience init() {
        self.init(category: "Onbekende categorie")
    }
    
/*
     Ongewervelden
     Vissen
     Amfibieën
     Reptielen
     Vogels
     Zoogdieren
*/
    
/*
     INITIALIZATION
https://docs.swift.org/swift-book/LanguageGuide/Initialization.html#ID222
     
     CLASSES AND STRUCTURES
https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html
     
     INHERITANCE
https://docs.swift.org/swift-book/LanguageGuide/Inheritance.html

     ANY AND ANYOBJECT
https://docs.swift.org/swift-book/LanguageGuide/TypeCasting.html
https://developer.apple.com/documentation/swift/anyobject
     
     COMPUTED PROPERTIES
https://docs.swift.org/swift-book/LanguageGuide/Properties.html
     
*/

}
