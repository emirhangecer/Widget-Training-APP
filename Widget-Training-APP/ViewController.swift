//
//  ViewController.swift
//  Widget-Training-APP
//
//  Created by Emirhan on 5.07.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var ımageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonYap(_ sender: Any) {
        
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
        
    }
    
    @IBAction func buttonMutlu(_ sender: Any) {
        
        ımageView.image = UIImage(named: "mutlu")
    }
    
    
    @IBAction func buttonUzgun(_ sender: Any) {
        ımageView.image = UIImage(named: "uzgun")

    }
    
    
}

