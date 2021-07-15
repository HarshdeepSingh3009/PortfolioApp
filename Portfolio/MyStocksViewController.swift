//
//  MyStocksViewController.swift
//  Portfolio
//
//  Created by Harshdeep Singh on 7/8/21.
//

import UIKit

class MyStocksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let myStocks = ["Amazon", "Tesla", "Google", "Facebook", "Sundial"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let unib = UINib (nibName: "StockCellTableViewCell", bundle: nil)
        // Do any additional setup after loading the view.
        tableView.register( unib, forCellReuseIdentifier: "StockCellTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myStocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StockCellTableViewCell", for: indexPath) as!
            StockCellTableViewCell
        let xyz = Float.random(in: -10..<100)
        let abc  = Float.random(in: 0..<10)
        cell.myStockAbbvLabel.text = myStocks[indexPath.row]
        cell.myProfitLossLabel.text = String(format:"%.2f",abc)
        if abc >= 0
        {
            cell.myProfitLossLabel.backgroundColor = .green
        } else {
            cell.myProfitLossLabel.backgroundColor = .red
        }
        cell.currentPriceButton.setTitle(String(format:"%.2f",xyz), for: .normal)
        if xyz >= 0
        {
            cell.currentPriceButton.setTitleColor(.green, for: .normal)
        } else {
            cell.currentPriceButton.setTitleColor(.red, for: .normal)
        }
        cell.myProfitLossLabel.layer.masksToBounds = true
        cell.myProfitLossLabel.layer.cornerRadius  = 3
        cell.backgroundColor = .black
        //cell.textLabel?.text = myStocks[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! StockCellTableViewCell
        print("You tapped ",cell.myStockAbbvLabel.text!," !!!!!")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
