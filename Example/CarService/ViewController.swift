//
//  ViewController.swift
//  CarService
//
//  Created by BrenoLuizetto on 01/14/2021.
//  Copyright (c) 2021 BrenoLuizetto. All rights reserved.
//

import UIKit
import CarService

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CarServiceModule().getMainViewController(nav: UINavigationController())
        ServiceCars().getCars { (result) in

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

