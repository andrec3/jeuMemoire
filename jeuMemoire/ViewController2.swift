//==========================================
//  ViewController2.swift
//  jeuMemoire
//
//  Created by Andre Cruz on 2017-10-01.
//  Copyright © 2017 Andre Cruz. All rights reserved.
//==========================================

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var btnDemarrer: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Appel des fonctions d'animation
        animationScaleUp()
        animationScaleDown()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //----------------------- Fonctions d'animation du bouton démarrer
    private func animationScaleUp(){
        UIView.animate(withDuration: 0.4, delay: 1, options: [.curveEaseIn, .allowUserInteraction],  animations: {self.btnDemarrer.transform = CGAffineTransform (scaleX: 1.3, y: 1.3)}) {(true) in self.animationScaleUp()}
    }
    
    private func animationScaleDown(){
        UIView.animate(withDuration: 0.4, delay: 1, options: [.curveEaseOut, .allowUserInteraction],  animations: {self.btnDemarrer.transform = CGAffineTransform (scaleX: 1, y: 1)}) {(true) in self.animationScaleDown()}
    }
    //-----------------------

}
