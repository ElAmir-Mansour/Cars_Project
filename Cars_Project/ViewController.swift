//
//  ViewController.swift
//  Cars_Project
//
//  Created by ElAmir Mansour on 22/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var tableView : UITableView!
    
    let cars = [ " Mazzarati" , "BMW ", "Mercedes ","Toyota","Tesla","Courvet","Suzuki","Audi"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let carModel = cars[indexPath.row]
        print(carModel)
        
        let vc = DetailViewController()
        vc.carModel = carModel
        navigationController?.pushViewController(vc, animated: false)
    }
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row ]
        
        return cell
    }
    
}



