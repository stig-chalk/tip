//
//  ViewController.swift
//  TipCalculator
//
//  Created by Yuhui Chen on 2019/3/30.
//  Copyright © 2019 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var lightLabel: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipControl:  UISegmentedControl!
    @IBOutlet weak var light: UISwitch!
    @IBOutlet weak var billLabel: UILabel!
    let dft = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dft.set(0.15, forKey:"rate0")
        dft.set(0.18, forKey:"rate1")
        dft.set(0.20, forKey:"rate2")
    }

    @IBAction func lightOn(_ sender: Any) {
        if light.isOn{
            view.backgroundColor = .white
            bill.textColor = .black
            bill.attributedPlaceholder = NSAttributedString(string:"$", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
            billLabel.textColor = .black
            lightLabel.textColor = .black
        }else{
            view.backgroundColor = .black
            bill.textColor = .white
            bill.attributedPlaceholder = NSAttributedString(string:"$", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
            billLabel.textColor = .white
            lightLabel.textColor = .white
        }
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Change segment control title
        tipControl.setTitle("%" + String(Int(dft.double(forKey: "rate0") * 100)), forSegmentAt: 0)
        tipControl.setTitle("%" + String(Int(dft.double(forKey: "rate1") * 100)), forSegmentAt: 1)
        tipControl.setTitle("%" + String(Int(dft.double(forKey: "rate2") * 100)), forSegmentAt: 2)
        //Calculating tips
        
        let b = Double(bill.text!) ?? 0
        let t = b * dft.double(forKey: String(format: "rate%d", tipControl.selectedSegmentIndex))
        let tot = b + t
        tip.text = String(format: "$%.2f", t)
        total.text = String(format: "$%.2f", tot)
        
        
    }

}

