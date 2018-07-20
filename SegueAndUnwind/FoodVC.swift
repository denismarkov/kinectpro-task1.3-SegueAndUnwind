//
//  ViewController.swift
//  SegueAndUnwind
//
//  Created by Denis Markov on 7/20/18.
//  Copyright © 2018 Denis Markov. All rights reserved.
//

import UIKit

class FoodVC: UIViewController {
    
    @IBOutlet weak var foodDisplayLabel: UILabel!
    @IBOutlet weak var drinkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let drinkVC = segue.destination as? DrinkVC else { return}
        drinkVC.drinkValue = drinkTextField.text
    }
    
    @IBAction func didUnwindFromDrinkVC(_ sender: UIStoryboardSegue) {
        guard let drinkVC = sender.source as? DrinkVC else {return}
        foodDisplayLabel.text = drinkVC.foodTextField.text
    }

}

