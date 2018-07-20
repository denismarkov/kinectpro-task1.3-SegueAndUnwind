//
//  DrinkVC.swift
//  SegueAndUnwind
//
//  Created by Denis Markov on 7/20/18.
//  Copyright © 2018 Denis Markov. All rights reserved.
//

import UIKit

class DrinkVC: UIViewController {

    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var drinkDisplayLabel: UILabel!
    
    var drinkValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        drinkDisplayLabel.text = drinkValue
    }

}
