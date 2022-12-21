//
//  ViewController.swift
//  snacks
//
//  Created by Mac on 02/11/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
   
    @IBOutlet weak var snackItemTableView: UITableView!
    
    var snacks : [String] = ["poha","upma","dosa","vadapav","missal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        snackItemTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return snacks.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.snackItemTableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        let eachsnacks = snacks[indexPath.row]
        cell.textLabel?.text = eachsnacks
        
        return cell
    }
    
    


}

