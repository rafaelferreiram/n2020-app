//
//  TriagemViewController.swift
//  UIKIT Swift__2020
//
//  Created by Rafael on 6/14/20.
//  Copyright © 2020 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class TriagemViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
