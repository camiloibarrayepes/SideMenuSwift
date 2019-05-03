//
//  MenuController.swift
//  SideMenu
//
//  Created by camilo andres ibarra yepes on 5/2/19.
//  Copyright © 2019 camilo andres ibarra yepes. All rights reserved.
//

import UIKit
private let reuseIdentifer = "MenuOptionCell"

class MenuController: UIViewController{
    //MARK properties
    var tableView: UITableView!
    //MARK init
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK Handlres
    func configureTableView(){
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifer)
    }
}

extension MenuController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) as! MenuOptionCell
        return cell
    }
    
    
}
