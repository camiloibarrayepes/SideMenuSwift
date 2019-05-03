//
//  ContainerController.swift
//  SideMenu
//
//  Created by camilo andres ibarra yepes on 5/2/19.
//  Copyright © 2019 camilo andres ibarra yepes. All rights reserved.
//

import UIKit

class ContainerController: UIViewController{
    //MARK properties
    //MARK init
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    //MARK Handlres
    
    func configureHomeController(){
        let homeController = HomeController()
        let controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
    }
    
    func configureMenuController(){
        
    }
    
}
