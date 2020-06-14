//
//  ViewController.swift
//  UIKIT Swift__2020
//
//  Created by Agesandro Scarpioni on 22/04/20.
//  Copyright © 2020 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var lblPAS: UILabel!
    @IBOutlet weak var lblPAD: UILabel!
    @IBOutlet weak var lblSMS: UILabel!
    @IBOutlet weak var clasRisco: UISegmentedControl!
    @IBOutlet weak var meuStepper: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func sliderPasValueChanged(_ sender: UISlider) {
        lblPAS.text = "\(Int(sender.value))"
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblIdade.text = "\(Int(meuStepper.value))"
    }
    
    
    
    @IBAction func indexChange(_ sender: Any) {
        switch (clasRisco.selectedSegmentIndex) {
        case 0:
            print("Você clicou no botão 1")
        case 1:
            print("Você clicou no botão 2")
        case 2:
            print("Você clicou no botão 3")
        case 3:
            print("Você clicou em \(clasRisco.titleForSegment(at: clasRisco.selectedSegmentIndex)!)")
        default:
            break
        }
    }
    
    
}

