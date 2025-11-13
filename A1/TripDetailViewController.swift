//
//  TripDetailViewController.swift
//  A1
//
//  Created by Kristin Theoret on 2025-11-13.
//  Copyright © 2025 Robin Wagubi. All rights reserved.
//


import UIKit

class TripDetailViewController: UIViewController {

    @IBOutlet weak var tripLabel: UILabel!
    var tripName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        tripLabel.text = tripName ?? "Trip Detail"
    }
}
