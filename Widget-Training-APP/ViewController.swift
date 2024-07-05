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
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
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
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch : ON")
        }else{
            print("Switch : OFF")

        }
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        
        print("Switch durum: \(mSwitch.isOn)")
        let secilenIndeks = segmentedController.selectedSegmentIndex
        let secilenKategori = segmentedController.titleForSegment(at: secilenIndeks)
        print("Segmented durum: \(secilenKategori!)")
    }
        
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Seçim: \(secilenKategori!)")
    }
    
}

