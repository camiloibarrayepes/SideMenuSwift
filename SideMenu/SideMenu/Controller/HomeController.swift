//
//  HomeController.swift
//  SideMenu
//
//  Created by camilo andres ibarra yepes on 5/2/19.
//  Copyright © 2019 camilo andres ibarra yepes. All rights reserved.
//

import UIKit

class HomeController: UIViewController{
    //MARK properties
    var delegate: HomeControllerDelegate?
    //MARK init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    //MARK Handlres
    
    @objc func handleMenuToggle(){
        delegate?.handleMenuToggle()
    }
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Slide Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
