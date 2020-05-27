//
//  ViewController.swift
//  BTPassData
//
//  Created by guntex01 on 5/25/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Nhập một số bất kỳ"
    }
    
    @IBAction func dialButton(_ sender: Any) {
        let SecondVC = SecondViewController()
        SecondVC.labelString = textField.text
        SecondVC.passData = { [weak self] data in
            guard let strongSelf = self else {return}
            strongSelf.label.text = data.bird
        }
        self.navigationController?.pushViewController(SecondVC, animated: true)
    }
}

