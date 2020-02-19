//
//  ViewController.swift
//  xib_tableView
//
//  Created by Amira Maythe Vasquez on 19/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let names: [String] = ["Amira", "Lucas", "Gabi","João"]
    let ages: [String] = ["24","14","30","11"]

    @IBOutlet weak var tableView: UITableView!{
        didSet{
            let nibName = UINib(nibName: "TableViewCell", bundle: nil)
            tableView.register(nibName, forCellReuseIdentifier: "idCell")
            tableView.dataSource = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell") as! TableViewCell
        cell.userAge.text = ages[indexPath.row]
        cell.userName.text = names[indexPath.row]
        cell.userImage.image = UIImage(named: names[indexPath.row])

        return cell

    }


}
