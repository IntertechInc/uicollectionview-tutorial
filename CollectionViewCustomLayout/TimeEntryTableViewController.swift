//
//  TimeEntryTableViewController.swift
//  CollectionViewCustomLayout
//
//  Created by Ryan Harvey on 8/8/15.
//  Copyright (c) 2015 Intertech. All rights reserved.
//

import UIKit

class TimeEntryTableViewController : UITableViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleData.count;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        let data = sampleData[indexPath.item]
        cell.textLabel?.text = data.0
        cell.detailTextLabel?.text = "\(data.1) (\(data.2))"
        return cell;
    }
}