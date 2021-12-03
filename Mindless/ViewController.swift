//
//  ViewController.swift
//  Mindless
//
//  Created by Natália Brocca dos Santos on 30/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageGuiada: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.playButton.layer.cornerRadius = self.playButton.bounds.width/2
 
    }
}

