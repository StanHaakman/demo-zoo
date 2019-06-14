import Foundation

class ZooDataSource {
    var sections: [Any] = []
    
    init() {
        
        var vogels: [Vogel] = []
        var vissen: [Vis] = []
        var zoogdieren: [Zoogdier] = []
        var reptielen: [Reptiel] = []
        
        var vogel = Vogel(name: "Kanarie")
        if allowedAnimals(animal: vogel.category) {
            vogels.append(vogel)
        }
        
        vogel = Vogel(name: "Huismus")
        if allowedAnimals(animal: vogel.category) {
            vogels.append(vogel)
        }
        
        vogel = Vogel(name: "Zwaluw")
        if allowedAnimals(animal: vogel.category) {
            vogels.append(vogel)
        }
        
        var vis = Vis(name: "Nemo")
        if allowedAnimals(animal: vis.category) {
            vissen.append(vis)
        }
        
        vis = Vis(name: "Guppie")
        if allowedAnimals(animal: vis.category) {
            vissen.append(vis)
        }

        var zoogdier = Zoogdier(name: "Ezel")
        if allowedAnimals(animal: zoogdier.category) {
            zoogdieren.append(zoogdier)
        }

        zoogdier = Zoogdier(name: "Koe")
        if allowedAnimals(animal: zoogdier.category) {
            zoogdieren.append(zoogdier)
        }

        var reptiel = Reptiel(name: "Python")
        if allowedAnimals(animal: reptiel.category) {
            reptielen.append(reptiel)
        }

        reptiel = Reptiel(name: "Anaconda")
        if allowedAnimals(animal: reptiel.category) {
            reptielen.append(reptiel)
        }
        
        // Toevoegen als section
        if reptielen.count > 0  {
            sectionUsed(section: reptielen)
        }
        
        if vogels.count > 0 {
            sectionUsed(section: vogels)
        }
        if vissen.count > 0 {
            sectionUsed(section: vissen)
        }
        
        if zoogdieren.count > 0 {
            sectionUsed(section: zoogdieren)
        }
        
    }
    
    func allowedAnimals(animal: String) -> Bool{
        var retVal: Bool = false
        
        // Deze dierentuin heeft alleen Vogels, Vissen en Zoogdieren
        switch animal {
        case "Vogel", "Vis", "Zoogdier", "Reptiel":
            retVal = true
            break
        default:
            retVal = false
            break
        }
        return retVal
    }
    
    func sectionUsed(section: Any) {
        sections.append(section)
    }
    
}
