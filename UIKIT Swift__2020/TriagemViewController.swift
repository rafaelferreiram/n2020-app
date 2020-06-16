//
//  TriagemViewController.swift
//  UIKIT Swift__2020
//
//  Created by Rafael on 6/14/20.
//  Copyright © 2020 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class TriagemViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var pressaoAlta: UISwitch!
    @IBOutlet weak var diabetes: UISwitch!
    @IBOutlet weak var medicacao: UISwitch!
    @IBOutlet weak var cirurgia: UISwitch!
    @IBOutlet weak var alergiaMedicacao: UISwitch!
    @IBOutlet weak var febre: UISwitch!
    @IBOutlet weak var vomito: UISwitch!
    @IBOutlet weak var diarreia: UISwitch!
    
    @IBOutlet weak var medicacaoInput: RoundInput!
    @IBOutlet weak var cirurgiaInput: RoundInput!
    @IBOutlet weak var alergiaInput: RoundInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func medicacaoChange(_ sender: UISwitch) {
        medicacaoInput.isEnabled = sender.isOn;
    }
    
    @IBAction func cirurgiaChange(_ sender: UISwitch) {
        cirurgiaInput.isEnabled = sender.isOn;
    }
    
    @IBAction func alergiaChange(_ sender: UISwitch) {
        alergiaInput.isEnabled = sender.isOn;
    }
    
   
    func getQrCode () ->UIImage?{
        return generateQRCode(from: "Sua senha para a triagem -> 78")
    }
     
    func generateQRCode(from string:String) -> UIImage? {
           
           let data = string.data(using: String.Encoding.ascii)
           
           if let filter = CIFilter(name: "CIQRCodeGenerator"){
               
               filter.setValue(data, forKey: "inputMessage")
               
               let transform = CGAffineTransform(scaleX: 3, y: 3)
               
               if let output = filter.outputImage?.transformed(by: transform) {
                   return UIImage(ciImage: output)
               }
               
           }
           
           return nil
           
       }
}
