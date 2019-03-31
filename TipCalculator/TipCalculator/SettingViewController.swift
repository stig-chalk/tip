//
//  SettingViewController.swift
//  TipCalculator
//
//  Created by Yuhiu Chen on 2019/3/30.
//  Copyright © 2019 Codepath. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var rate0: UITextField!
    @IBOutlet weak var rate1: UITextField!
    @IBOutlet weak var rate2: UITextField!
    let udf = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
    }
    
    @IBAction func resetOne(_ sender: Any) {
        
        let r0 = Double(rate0.text!) ?? udf.double(forKey: "rate0")
        let r1 = Double(rate1.text!) ?? udf.double(forKey: "rate1")
        let r2 = Double(rate2.text!) ?? udf.double(forKey: "rate2")
        udf.set(r0, forKey:"rate0")
        udf.set(r1, forKey:"rate1")
        udf.set(r2, forKey:"rate2")
        udf.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
