//
//  infoViewController.swift
//  mSmart_test2
//
//  Created by Kassa 1 on 2021-07-21.
//

import UIKit
import BuyMeACoffee

class infoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func infoButton(_ sender: Any) {
        if let url = URL(string: "https://www.linkedin.com/in/iotrobban/") {
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

}
 
