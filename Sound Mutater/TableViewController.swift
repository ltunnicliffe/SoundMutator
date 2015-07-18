//
//  TableViewController.swift
//  Sound Mutater
//
//  Created by Luke on 2015/07/16.
//  Copyright (c) 2015年 Luke Tunnicliffe. All rights reserved.
//

import UIKit

class RecordingsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    
    var audioRecordings = [
        ["text" : "Do", "detail" : "A deer. A female deer."],
        ["text" : "Re", "detail" : "A drop of golden sun."],
        ["text" : "Mi", "detail" : "A name, I call myself."],
        ["text" : "Fa", "detail" : "A long long way to run."],
        ["text" : "So", "detail" : "A needle pulling thread."],
        ["text" : "La", "detail" : "A note to follow So."],
        ["text" : "Ti", "detail" : "A drink with jam and bread."]
    ]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return self.audioRecordings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("soundCell") as! UITableViewCell
        let audioToBeUsed = self.audioRecordings[indexPath.row]
        cell.textLabel!.text = audioToBeUsed["text"]
        cell.detailTextLabel?.text = audioToBeUsed["detail"]
        return cell
        
        
    }
   
    
    
}
