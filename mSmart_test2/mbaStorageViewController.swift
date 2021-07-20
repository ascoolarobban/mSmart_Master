//
//  mbaStorageViewController.swift
//  mSmart_test2
//
//  Created by Robin Ellingsen on 2021-07-20.
//


//mba_storage
import UIKit

class mbaStorageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Storage"

        // Do any additional setup after loading the view.
    }
    @IBOutlet var mba_storageButtons: [CustomCheckButton]!
    
    @IBAction func storageSelected(_ sender: CustomCheckButton) {
        
        mba_storageButtons.forEach(){
            $0.layer.borderColor = UIColor.systemGray.cgColor
            $0.layer.borderWidth = 1;
        }
        
        
        sender.layer.borderWidth = 2;
        sender.layer.borderColor = UIColor.systemBlue.cgColor
    }
    


}
