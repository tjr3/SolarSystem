//
//  DetailViewController.swift
//  SolarSystem
//
//  Created by Tyler on 5/17/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let planet = planet {
            updatePlanetView(planet)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updatePlanetView(planet: Planet) {
        title = planet.name
        distanceLabel.text = ("\(planet.millionKMsFromSun) 10^6KMs")
        diameterLabel.text = ("\(planet.diameter) kms")
        dayLengthLabel.text = ("\(planet.dayLength) days")
        imageLabel.image = UIImage (named: planet.imageName)
    }
    
//    if let planet = planet {
//        diameterLabel.text = planet.diameter
//        distanceLabel.text = planet.millionKMsFromSun
//        dayLengthLabel.text = planet.dayLength
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
