//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Tekin Aksel Demir on 28.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
        
    }
    
    
    
}
