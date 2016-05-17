//
//  PlanetTableViewController.swift
//  SolarSystem
//
//  Created by Tyler on 5/17/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    

    
    let planetOrder = ["The messenger God of the Romans!", "The hottest planet in our solar system!", "The only planet in the universe to hold life!", "The Red planet!", "The largest planet in our solar system!", "Has 12 rings!", "Has 27 moons!", "Was named after the roman God of the Sea!", "Was, then wasnt, then was again a planet!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PlanetController.planets.count
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // MARK: VC LifeCycle
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
    }
    
    // MARK: - Header
    
    // TODO: fix header
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100.0
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "solar-system")
        return imageView
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.imageName)
        cell.detailTextLabel?.text = planetOrder[indexPath.row]

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetailSegue" {
            let detailVC = segue.destinationViewController as? DetailViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                let planet = PlanetController.planets[indexPath.row]
                detailVC?.planet = planet
            }
        }
        
//        @IBOutlet weak var distanceLabel: UILabel!
//        @IBOutlet weak var dayLengthLabel: UILabel!
//        @IBOutlet weak var diameterLabel: UILabel!
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
