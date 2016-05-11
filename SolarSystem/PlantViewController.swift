//
//  PlantViewController.swift
//  SolarSystem
//
//  Created by Tyler on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlantViewController: UIViewController {
    
    var planet: Planet?
    

    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let planet = planet {
            updateWithPlanet(planet)
        
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithPlanet(planet: Planet) {
        self.navigationItem.title = planet.name
        imageLabel.image = UIImage(named: planet.name.lowercaseString)
        diameterLabel.text = "Diameter: \(planet.diameter)"
        distanceLabel.text = "Distance: \(planet.millionKMsFromSun) million km from the Sun"
        dayLabel.text = "Day Length: \(planet.dayLength)"
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
