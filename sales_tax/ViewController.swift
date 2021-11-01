//
//  ViewController.swift
//  sales_tax
//
//  Created by Matthew DAbreu on 10/26/21.
//

import UIKit

class ViewController: UIViewController {

    var before_tax_price: Float = 0
    var sales_tax_rate: Float = 0
    
    @IBOutlet weak var total_price: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func before_tax_price_change(_ sender: UITextField) {
        if let value = Float(sender.text!) {
            before_tax_price = value
        } else {
            before_tax_price = 0
        }
    }
    
    
    @IBAction func sales_tax_price_change(_ sender: UITextField) {
        if let value = Float(sender.text!) {
            sales_tax_rate = value
        } else {
            sales_tax_rate = 0
        }
    }
    
    
    
    @IBAction func calculate_button_press(_ sender: UIButton) {
        
        let sales_tax = before_tax_price * (sales_tax_rate/100)
        let after_tax_price = before_tax_price + sales_tax
        
        total_price.text = String(after_tax_price)
    }
    
    
}

