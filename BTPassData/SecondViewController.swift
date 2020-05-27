//
//  SecondViewController.swift
//  BTPassData
//
//  Created by guntex01 on 5/26/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var dialButton: UIButton!
    var labelString: String?
    var passData: ((Bird) -> Void)?
    var number: Int?
    var alert: String?
    var isDial: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Quay số may mắn"
        navigationController?.navigationBar.prefersLargeTitles = true
        if let labelT = labelString {
            textLabel.text = "Số bạn chọn là \(labelT)"
        }
        
    }
    
    @IBAction func letDial(_ sender: Any) {
        if isDial == true {
            number = Int.random(in: 0...100)
            dialButton.setTitle("nhận thưởng", for: .normal)
            isDial = false
        } else{
            alert = (number == Int(labelString ?? "") ) ? "Bạn đã trúng thưởng" : "Chúc bạn may mắn lần sau"
            guard let alert = alert else{return}
            passData?(Bird(bird: alert))
            navigationController?.popViewController(animated: true)
            isDial = true
        }
    }
}




