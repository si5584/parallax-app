//
//  ViewController.swift
//  accelerometron
//
//  Created by Simon Lovelock on 09/01/2019.
//  Copyright © 2019 Simon Lovelock. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell") as? ParallaxCell else {return UITableViewCell() }
        cell.configureCell(withImage: imageArray[indexPath.row], andDescription: namesArray[indexPath.row])
        return cell
    }
}

