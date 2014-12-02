//
//  DetailViewController.swift
//  Mileagz
//
//  Created by Darrell Nicholas on 10/19/14.
//  Copyright (c) 2014 Darrell Nicholas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var milesLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
  let PIN = "264520"
  
  
  var detailItem: AnyObject? {
    didSet {
      // Update the view.
      self.configureView()
    }
  }
  
  func configureView() {
    // Update the user interface for the detail item.
    if let detail: AnyObject = self.detailItem {
      if let mLabel = self.milesLabel {
        mLabel.text = detail.valueForKey("mileage")!.description
      }
      if let dLabel = self.dateLabel {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        let myDate: NSDate = detail.valueForKey("date") as NSDate
        
        dLabel.text = dateFormatter.stringFromDate(myDate)
        
        /* 
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        let myDate: NSDate = detail.valueForKey("date") as NSDate
        
        let detailText = dateFormatter.stringFromDate(myDate)
        cell.detailTextLabel?.text = detailText
        */
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    title = "PIN Code: \(PIN)"
    self.configureView()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // not today rgba = 42, 0, 74, .8
}

