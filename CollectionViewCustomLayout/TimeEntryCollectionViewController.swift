//
//  ViewController.swift
//  CollectionViewCustomLayout
//
//  Created by Ryan Harvey on 7/26/15.
//  Copyright (c) 2015 Intertech. All rights reserved.
//

import UIKit

class TimeEntryCollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        let layout = TimeEntryCollectionLayout()
        layout.days = sampleDataByDay
        collectionView?.collectionViewLayout = layout
    }
    override func viewWillAppear(animated: Bool) {
        collectionView!.reloadData()
    }
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return sampleDataByDay.count
    }
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleDataByDay[section].entries.count
    }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("timeEntryCell", forIndexPath: indexPath) 
        
        let timeEntry = sampleDataByDay[indexPath.section].entries[indexPath.item]
        let label = cell.viewWithTag(1) as! UILabel
        label.text = "\(timeEntry.client) (\(timeEntry.hours))"
        
        return cell
    }
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        let cell = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "dayHeaderCell", forIndexPath: indexPath) ;
        
        let day = sampleDataByDay[indexPath.section];
        let totalHours = day.entries.reduce(0) {(total, entry) in total + entry.hours}
        
        let dateLabel = cell.viewWithTag(1) as! UILabel
        let hoursLabel = cell.viewWithTag(2) as! UILabel
        
        dateLabel.text = day.date.stringByReplacingOccurrencesOfString(" ", withString: "\n").uppercaseString
        hoursLabel.text = String(totalHours)
        
        let hours = String(totalHours)
        let bold = [NSFontAttributeName: UIFont.boldSystemFontOfSize(16)]
        let text = NSMutableAttributedString(string: "\(hours)\nHOURS")
        text.setAttributes(bold, range: NSMakeRange(0, hours.characters.count))
        hoursLabel.attributedText = text
        
        return cell
    }
}