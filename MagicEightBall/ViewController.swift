//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Tatiana Jamison on 11/3/15.
//  Copyright © 2015 jamisont. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func pressedAsk(sender: UIButton) {
        var eightBall = MagicEightBall()
        eightBall.shakeBall()
        self.imageView.image = eightBall.getImage()
        self.label.text = eightBall.getMessage()
    }
}




