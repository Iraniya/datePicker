//
//  ViewController.swift
//  date
//
//  Created by Iraniya Naynesh on 28/03/18.
//  Copyright © 2018 Iraniya Naynesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 100))
        
        datePicker.datePickerMode = .time // setting mode to timer so user can only pick time as you want
        datePicker.minuteInterval = 30  // with interval of 30
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat =  "HH:mm"
        
        let min = dateFormatter.date(from: "9:00")      //createing min time
        let max = dateFormatter.date(from: "21:00") //creating max time
        datePicker.minimumDate = min  //setting min time to picker
        datePicker.maximumDate = max  //setting max time to picker
        
        view.addSubview(datePicker)
    }

}

