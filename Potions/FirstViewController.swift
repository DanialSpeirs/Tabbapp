//
//  FirstViewController.swift
//  Potions
//
//  Created by Family on 5/11/16.
//  Copyright © 2016 Danial Taylor. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    
     let fruits = ["Apples", "Bananas", "Oranges", "Pineapples", "Watermelons", "Strawberries", "Raspberries", "Grapes", "Pomegranates", "Peaches", "Cherries", "Dates"]

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let fruit = fruits[indexPath.row]
                (segue.destinationViewController as! DetailViewController).detailItem = fruit
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        let fruit = fruits[indexPath.row]
        cell.textLabel!.text = fruit
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
}

