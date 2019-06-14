import UIKit

class AnimalController: UITableViewController {

    var zoo: ZooDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zoo = ZooDataSource()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return zoo.sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return numberOfRows(sectionNumber: section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        let animalInfo = animalNameInSection(sectionNumber: indexPath.section, row: indexPath.row)
        
        cell.textLabel?.text = animalInfo.name
        cell.detailTextLabel?.text = animalInfo.category
        
        return cell
    }


    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return nameOfCategory(sectionNumber: section)
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let vc = segue.destination as? DetailController
        
        // Pass the selected object to the new view controller.
        
        let indexSection = tableView.indexPathForSelectedRow?.section
        let indexRow = tableView.indexPathForSelectedRow?.row
        
        let animalInfo = animalDetailSection(sectionNumber: indexSection!, row: indexRow!)
        
        vc?.animalInfo = (animalInfo.name, animalInfo.imageName)
        
    }


    // MARK: - Section methods
    func numberOfRows(sectionNumber: Int) -> Int {
        var section = [Any]()

        if zoo.sections[sectionNumber] is Array<Vogel> {
            section = zoo.sections[sectionNumber] as! [Vogel]
        }
        if zoo.sections[sectionNumber] is Array<Reptiel> {
            section = zoo.sections[sectionNumber] as! [Reptiel]
        }
        if zoo.sections[sectionNumber] is Array<Vis> {
            section = zoo.sections[sectionNumber] as! [Vis]
        }
        if zoo.sections[sectionNumber] is Array<Zoogdier> {
            section = zoo.sections[sectionNumber] as! [Zoogdier]
        }
        return section.count
    }
   
    func animalNameInSection(sectionNumber: Int, row: Int) -> (name: String, category: String) {
        var name: String?
        var category: String?
        
        if zoo.sections[sectionNumber] is Array<Vogel> {
            let section = zoo.sections[sectionNumber] as! [Vogel]
            name = section[row].name
            category = section[row].category
        }
        
        if zoo.sections[sectionNumber] is Array<Reptiel> {
            let section = zoo.sections[sectionNumber] as! [Reptiel]
            name = section[row].name
            category = section[row].category
        }
        
        if zoo.sections[sectionNumber] is Array<Vis> {
            let section = zoo.sections[sectionNumber] as! [Vis]
            name = section[row].name
            category = section[row].category
        }
        
        if zoo.sections[sectionNumber] is Array<Zoogdier> {
            let section = zoo.sections[sectionNumber] as! [Zoogdier]
            name = section[row].name
            category = section[row].category
        }

        return (name ?? "No name", category ?? "Unknown category")
    }
    
    func nameOfCategory(sectionNumber: Int) -> String {
        var header: String?
        
        if zoo.sections[sectionNumber] is Array<Vogel> {
            header = "Vogels"
        }
        if zoo.sections[sectionNumber] is Array<Reptiel> {
            header = "Reptielen"
        }
        if zoo.sections[sectionNumber] is Array<Vis> {
            header = "Vissen"
        }
        if zoo.sections[sectionNumber] is Array<Zoogdier> {
            header = "Zoogdieren"
        }
        return header ?? "Unknown category"
    }
    
    func animalDetailSection(sectionNumber: Int, row: Int) -> (name: String, imageName: String) {
        
        var name: String?
        var imageName: String?
        
        if zoo.sections[sectionNumber] is Array<Vogel> {
            let section = zoo.sections[sectionNumber] as! [Vogel]
            name = section[row].name
            imageName = section[row].image
        }
        
        if zoo.sections[sectionNumber] is Array<Reptiel> {
            let section = zoo.sections[sectionNumber] as! [Reptiel]
            name = section[row].name
            imageName = section[row].image
        }
        
        if zoo.sections[sectionNumber] is Array<Vis> {
            let section = zoo.sections[sectionNumber] as! [Vis]
            name = section[row].name
            imageName = section[row].image
        }
        
        if zoo.sections[sectionNumber] is Array<Zoogdier> {
            let section = zoo.sections[sectionNumber] as! [Zoogdier]
            
            name = section[row].name
            imageName = section[row].image
        }
        
        return (name ?? "No name", imageName ?? "Unknown image")
        
    }

}
