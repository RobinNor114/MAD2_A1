//
//  SummaryView.swift
//  A1
//
//  Created by Student on 2025-10-03.
//  Copyright © 2025 Robin Wagubi. All rights reserved.
//

import Foundation
import UIKit

class SummaryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    // Example trips list
    let trips = ["Greece", "Paris"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect the table view
        tableView.dataSource = self
        tableView.delegate = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TripCell", for: indexPath)
        cell.textLabel?.text = trips[indexPath.row]
        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        // Navigate to detail screen
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "TripDetailVC") as? TripDetailViewController {
            detailVC.tripName = trips[indexPath.row]
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}

