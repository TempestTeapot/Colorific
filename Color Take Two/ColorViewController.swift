//
//  ColorViewController.swift
//  Color Take Two
//
//  Created by Carla Hennes on 6/19/16.
//  Copyright © 2016 Carla Hennes. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if self.view.backgroundColor == UIColor.redColor() {
                self.colorLabel.text = "RED"
            } else if self.view.backgroundColor == UIColor.blueColor() {
                self.colorLabel.text = "BLUE"
            } else if self.view.backgroundColor == UIColor.purpleColor() {
                self.colorLabel.text = "PURPLE"
            } else if self.view.backgroundColor == UIColor.greenColor() {
                self.colorLabel.text = "GREEN"
            } else if self.view.backgroundColor == UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1.0) {
                self.colorLabel.text = "PINK"
            } else if self.view.backgroundColor == UIColor.yellowColor() {
                self.colorLabel.text = "AMARILLO"
            }
    }
}
