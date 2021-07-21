//
//  ViewController.swift
//  mSmart_test2
//
//  Created by Robin Ellingsen on 2021-07-20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mbaButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    @IBAction func mbaScreen() {
        let vc = storyboard?.instantiateViewController(identifier: "mba") as! mbaViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBOutlet var chooseCPU: [CustomCheckButton]!
    @IBAction func chooseCpu(_ sender: CustomCheckButton) {
        
        chooseCPU.forEach(){
            $0.layer.borderColor = UIColor.systemGray.cgColor
            $0.layer.borderWidth = 1;
        }
        
        
        sender.layer.borderWidth = 2;
        sender.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    

    

}

