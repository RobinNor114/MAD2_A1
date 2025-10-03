//
//  ViewController.swift
//  A1
//
//  Created by Student on 2025-10-02.
//  Copyright © 2025 Robin Wagubi. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var destinationImageView: UIImageView!
    @IBOutlet weak var destinationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set destination
        destinationImageView.image = UIImage(named: "greece")
        destinationLabel.text = "Greece"
        destinationLabel.textAlignment = .center
        destinationLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        // Rounded corners for the image
            destinationImageView.layer.cornerRadius = 20
            destinationImageView.clipsToBounds = true
    }
}
