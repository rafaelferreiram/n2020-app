//
//  MinhasTriagensViewController.swift
//  UIKIT Swift__2020
//
//  Created by Rafael on 6/15/20.
//  Copyright © 2020 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class MinhasTriagensViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    var traigem = TriagemViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = traigem.getQrCode()
    }

}
