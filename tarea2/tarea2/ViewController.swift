//
//  ViewController.swift
//  tarea2
//
//  Created by Memo Herrera on 27/02/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DishCell", for: indexPath) as! DishTableViewCell
        let imageName = self.categoriesList[indexPath.row]
        cell.labelCell.text = imageName
 
        cell.imageView?.image = UIImage(named: imageName)
        
        return cell
    }
    

    let categoriesList = [
        "Deserts",
        "Luxury",
        "Pastas",
        "Pizzas",
        "Salads",
        "Specialities"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
