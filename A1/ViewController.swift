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
    @IBOutlet weak var destinationImageView2: UIImageView!
    @IBOutlet weak var destinationLabel2: UILabel!


    
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
        
        //second set destination
        destinationImageView2.image = UIImage(named: "paris")
           destinationLabel2.text = "Paris"
           destinationLabel2.textAlignment = .center
           destinationLabel2.font = UIFont.systemFont(ofSize: 24, weight: .bold)
           destinationImageView2.layer.cornerRadius = 20
           destinationImageView2.clipsToBounds = true
    }
}
