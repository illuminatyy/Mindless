//
//  SleepViewController.swift
//  Mindless
//
//  Created by Natália Brocca dos Santos on 02/12/21.
//

import UIKit

class SleepViewController: UIViewController {
    @IBOutlet weak var imageSleepWell: UIImageView!
    @IBOutlet weak var playPauseButtonSleepWell: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageSleepWell.layer.cornerRadius = 35
        playPauseButtonSleepWell.layer.cornerRadius = 38
    }
    
}
