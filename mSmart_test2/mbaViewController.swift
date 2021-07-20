//
//  otherViewController.swift
//  mSmart_test2
//
//  Created by Robin Ellingsen on 2021-07-20.
//

import UIKit

class mbaViewController: UIViewController {

    
    @IBOutlet weak var gb8button: CustomCheckButton!
    @IBOutlet weak var gb16Button: CustomCheckButton!
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
    @IBAction func gb8button(_ sender: CustomCheckButton){
        print ("8Gb")
        
    }
    @IBAction func gb16button(_ sender: CustomCheckButton) {
        
        print("16")
        
    }
//    override func prepare ( for segue: UIStoryboardSegue, sender: Any?){
//        var totalScreen = segue.destination as! TotalViewController
//        totalScreen.totalString = gb8button()
//
//    }
//
//    @IBAction func mba_Storage() {
//        let vc2 = storyboard?.instantiateViewController(identifier: "mba_storage") as! mbaStorageViewController
//        vc2.modalPresentationStyle = .fullScreen
//        present(vc2,animated: true)
//    }

    


}
