//
//  DetailViewController.swift
//  Cars_Project
//
//  Created by ElAmir Mansour on 22/12/2022.
//

import UIKit

class DetailViewController: UIViewController {
    var carModel:String?

   
    @IBOutlet weak var carCar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        carCar.text = carModel

    }
   

}
