//
//  RecordViewController.swift
//  FindNumber
//
//  Created by Админ on 08.05.2022.
//

import UIKit

class RecordViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let record = UserDefaults.standard.integer(forKey: KeysUserDefault.recordGame)
        if record != 0{
            recordLabel.text = "Ваш рекорд - \(record) секунд"
        }else{recordLabel.text = "Рекорд не установлен"}
    }
    

  
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
