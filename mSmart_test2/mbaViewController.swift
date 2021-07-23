//
//  otherViewController.swift
//  mSmart_test2
//
//  Created by Robin Ellingsen on 2021-07-20.
//

import UIKit

class mbaViewController: UIViewController {
    
    let setPrice8 = 0
    let setPrice16 = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Macbook air"
        
    


        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var mba_memorySelect: [CustomCheckButton]!
    
    @IBAction func memorySelected(_ sender: CustomCheckButton) {
        
        mba_memorySelect.forEach(){
            $0.layer.borderColor = UIColor.systemGray.cgColor
            $0.layer.borderWidth = 1;
        }
        
        
        sender.layer.borderWidth = 2;
        sender.layer.borderColor = UIColor.systemBlue.cgColor
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! mbaStorageViewController
        destination.receivedText = sender as! Bool
    }

    @IBAction func button8gb(_ sender: Any) {
        performSegue(withIdentifier: "segueStorage", sender: setPrice8)
    }
    
    @IBAction func button16gb(_ sender: Any) {
        performSegue(withIdentifier: "segueStorage", sender: setPrice16)
    }
    
}

