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
    var daysPicker: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create the picker programmatically
        daysPicker = UIPickerView()
        daysPicker.translatesAutoresizingMaskIntoConstraints = false
        daysPicker.delegate = self
        daysPicker.dataSource = self

        view.addSubview(daysPicker)

        // Center it in the view
        NSLayoutConstraint.activate([
            daysPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            daysPicker.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(days[row]) days"
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("User selected \(days[row]) days")
    }
}
