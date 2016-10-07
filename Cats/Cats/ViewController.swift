//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var catsArray = ["Garfield", "Clifford", "Meowith", "CoolCat", "DumbCat", "FatCat", "SkinnyCat", "WhatTheCat", "Sabrina"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return catsArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        
        let catRow = catsArray[indexPath.row]
        
        cell.textLabel?.text = String(catRow)
        
        return cell
        
    }
}
