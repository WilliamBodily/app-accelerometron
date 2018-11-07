//
//  ListTableViewController.swift
//  accelerometron
//
//  Created by William Bodily on 11/6/18.
//  Copyright © 2018 William Bodily. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesAndLabels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell
            else { return UITableViewCell() }
        cell.configureCell(withImage: imagesAndLabels[indexPath.row].image, andDescription: imagesAndLabels[indexPath.row].label)
        return cell
    }

}
