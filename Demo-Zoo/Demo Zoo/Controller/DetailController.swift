//
//  DetailController.swift
//  Demo Zoo
//
//  Created by Simon Hitipeuw on 08/06/2019.
//  Copyright © 2019 Simon Hitipeuw. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    
    typealias info = (name: String, imageName: String)
    var animalInfo: info = ("", "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        animalName.text = ("""
            Naam: \(animalInfo.name)
            Afbeelding: \(animalInfo.imageName)
            """)
        
        animalImage.image = UIImage(named: animalInfo.name)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
