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
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        indicator.isHidden = true
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
        
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Seçim: \(secilenKategori!)")
    }
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        
        labelSlider.text = String(Int(sender.value))
    }
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        
        print("Switch durum: \(mSwitch.isOn)")
        let secilenIndeks = segmentedController.selectedSegmentIndex
        let secilenKategori = segmentedController.titleForSegment(at: secilenIndeks)
        print("Segmented durum: \(secilenKategori!)")
        print("Slider Durum: \(slider.value)")
        print("Stepper Durum: \(stepper.value)")
    }
}

