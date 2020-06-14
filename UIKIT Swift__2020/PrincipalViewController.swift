//
//  PrincipalViewController.swift
//  UIKIT Swift__2020
//
//  Created by Rafael on 6/14/20.
//  Copyright © 2020 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class PrincipalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 }
    
    @IBAction func logar(_ sender: Any) {
        performSegue(withIdentifier: "telaPrincipal", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let T = segue.destination as!UINavigationController
        //let vc = T.topViewController as! TriagemResultViewController
        //vc.texto = txtNome.text!
    }

}
