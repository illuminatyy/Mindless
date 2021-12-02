//
//  AnsiedadeViewController.swift
//  Mindless
//
//  Created by Marina De Pazzi on 30/11/21.
//

import UIKit

class AnsiedadeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var coverView: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    
    private var didTapPlay = false
    private var firstPlay = 1
    let ricardo = SpeechService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "tortoise.fill")

        // If you want to enable Color in the SF Symbols.
        imageAttachment.image = UIImage(systemName: "tortoise.fill")?.withTintColor(.blue)

        let fullString = NSMutableAttributedString(string: "Para a ansiedade ")
        fullString.append(NSAttributedString(attachment: imageAttachment))
        titleLabel.attributedText = fullString
        
        self.playButton.layer.cornerRadius = self.playButton.bounds.width/2
        self.coverView.layer.cornerRadius = 35
    }
    
    @IBAction func didTapPlayButton(_ sender: UIButton) {
        didTapPlay.toggle()

        //resume playback
        if didTapPlay {
            self.playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            
            ricardo.resume()
        
            if !ricardo.isSpeaking(){
                ricardo.say(something: "飛雷神　ニの段")
            }
        }
        //pause playback
        else {
            self.playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            ricardo.pause()
        }
    }
    
}
