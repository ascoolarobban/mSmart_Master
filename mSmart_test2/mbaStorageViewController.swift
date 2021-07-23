//
//  mbaStorageViewController.swift
//  mSmart_test2
//
//  Created by Robin Ellingsen on 2021-07-20.
//


//mba_storage
import UIKit

class mbaStorageViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    //PRISER

    //Tar emot 8gb eller 16 gb
    var receivedText = false
    let condition = false
    

    
    var gb256 = "1"
    var gb512 = "2"
    var tb1 = "3"
    var tb2 = "4"
    
    var gb256_16 = "1"
    var gb512_16 = "2"
    var tb1_16 = "3"
    var tb2_16 = "4"
    
    var finalPrice = Int()
  
    

    
    
    var setMbaPrice = Int()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lagring"

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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! TotalViewController
        destination.receivedText = sender as! String

        }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = String(receivedText)
    }
//    func setPrice () {
//        if (receivedText == false){
//            setMbaPrice = mba8gbPrice
//        }
//        else{
//            setMbaPrice = mba16gbPrice
//
//        }
//
        
//    }


    //BUTTONS:
    
    @IBAction func gb256Button(_ sender: Any) {
        
        performSegue(withIdentifier: "seguetotal", sender: gb256)
        
        
    }
    @IBAction func gb512(_ sender: Any) {
        
        performSegue(withIdentifier: "seguetotal", sender: gb512)
    }
    
    @IBAction func tb1button(_ sender: Any) {
        
        performSegue(withIdentifier: "seguetotal", sender: tb1)
    }
    @IBAction func tb2button(_ sender: Any) {
        
        performSegue(withIdentifier: "seguetotal", sender: tb2)
        
    }
    


}

