//
//  ProfileViewController.swift
//  A1
//
//  Created by Kristin Theoret on 2025-11-14.
//  Copyright © 2025 Robin Wagubi. All rights reserved.
//


//
//  ProfileViewController.swift
//  A1
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Round profile image
        profileImageView.layer.cornerRadius = 60
        profileImageView.clipsToBounds = true
        profileImageView.layer.borderWidth = 2
        profileImageView.layer.borderColor = UIColor.systemBlue.cgColor


        // Gesture recognizer to dismiss keyboard
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
