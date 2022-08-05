//
//  SelectTimeViewController.swift
//  FindNumber
//
//  Created by Админ on 07.05.2022.
//

import UIKit

class SelectTimeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView?.dataSource = self
            tableView?.delegate = self
        }
    }
    var data: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    



}
extension SelectTimeViewController:UITableViewDataSource, UITableViewDelegate{
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        //количество ячеек
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"timeCell", for: indexPath)
        
        cell.textLabel?.text = " \(data[indexPath.row]) сек"
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
       
        Settings.shared.currentSettings.timeForGame = data[indexPath.row]
        navigationController?.popViewController(animated: true)
    }
}
