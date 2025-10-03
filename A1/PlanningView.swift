//
//  PlanningView.swift
//  A1
//
//  Created by Student on 2025-10-03.
//  Copyright © 2025 Robin Wagubi. All rights reserved.
//

import UIKit

class PlannerView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let days = Array(1...30)
    
    // How many columns (components) the picker has
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    // How many rows in the picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }

    // What each row displays
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(days[row]) days"
    }

    // Called when the user selects a row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("User selected \(days[row]) days")
    }
    
    @IBOutlet weak var daysPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        daysPicker.delegate=self
        daysPicker.dataSource=self
    }
}
