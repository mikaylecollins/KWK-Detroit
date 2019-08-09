//
//  DogTableViewController.swift
//  Table View
//
//  Created by Apple on 8/9/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

struct Dog {
    var id : Int
    var title : String
    var text : String
    var image : String
}


class DogTableViewController: UITableViewController { //class brackets
  
    var allDog = [
        Dog(id: 1,
              title: "Schnoodle",
              text: " The Schnoodle is a mix of a poodle and schnauzer.",
              image: "schnoodle"),
       Dog(id: 2,
              title: "Lab",
              text: "The Lab is Americas favorite breed of dog and comes in three different colors.",
              image: "lab"),
        Dog(id: 3,
              title: "Golden Retriever",
              text: "The Golden Retriever was originated from Scotland and they are natural athletes",
              image: "golden retriever")
    ]
 


    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return allDog.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

 cell.textLabel?.text = allDog[indexPath.row].title
  
      
        
    cell.detailTextLabel?.text = allDog[indexPath.row].text
        
    cell.imageView?.image = UIImage(named: allDog[indexPath.row].image)
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return"Dog Breeds"
        
      
    }



} //class brackets

