//
//  ViewController.swift
//  TableSelection
//
//  Created by Lbranon lim on 01/11/2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var outputPrice: UILabel!
    var fruitNames = ["watermelon", "apple", "orange", "strawberry", "pear"]
    
    var fruitPrices = ["500", "100", "90", "200", "150"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitNames.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell:FruitTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FruitTableViewCell

        // Configure the cell...
        cell.typeLabel?.text = self.fruitNames[indexPath.row]
        cell.priceLabel?.text = self.fruitPrices[indexPath.row]
        cell.thumbnailImageView?.image = UIImage(named: "fruit")
    
        return cell
    }
    
    var sum = 0
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell = tableView.cellForRow(at: indexPath as IndexPath){
            if cell.accessoryType == .checkmark{
                cell.accessoryType = .none
                sum -= Int(fruitPrices[indexPath.row]) ?? 0
            }
            else{
                cell.accessoryType = .checkmark
                sum += Int(fruitPrices[indexPath.row]) ?? 0
            }
        }
        outputPrice.text = String(sum)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

