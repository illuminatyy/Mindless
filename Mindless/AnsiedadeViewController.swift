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
    let luciana = SpeechService()
    
    let meditationText = "Olá, meu nome é Marina e hoje vou-lhe guiar através de uma maravilhosa e relaxante meditação. \n Então primeiro, vamos começar tensionando os ombros, fechando os olhos bem devagarinho e aos poucos vamos respirando cada vez mais rapido. Conforme a tensão aumenta, vamos lembrar de todos os minimos detalhes do que podem dar errado no nosso dia. E se der tudo errado na escola ou no trabalho? E se estiverem clonando seu cartão nesse exato momento? E se esquecermos de respirar? E se eu estiver no banheiro cagando e desmaiar? Vou morrer suja? \n Agora que já conseguimos tensionar um pouco e aumentar a ansiedade vamos pensar sobre a nossa casa. Vamos fazer uma reflexão sobre o que nos preocupa. A porta de casa está mesmo fechada? Ou será que a cozinha ja não está em chamas porque você esqueceu o fogão ligado? Lembra onde estão as suas chaves? dos boletos em aberto, da fatura do cartão que não foi possível fechar e de todas as obrigações que temos na vida.\n Isso muito bem, agora que estamos com a ansiedade fresquinha, vamos finalizar com uma piada para descontrair. Sabe o que uma pessoa ansiosa disse ao ouvir uma piada sobre ansiedade?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "tortoise.fill")

        // If you want to enable Color in the SF Symbols.
        imageAttachment.image = UIImage(systemName: "tortoise.fill")?.withTintColor(UIColor(named: "buttonAndIconColor") ?? .blue)

        let fullString = NSMutableAttributedString(string: "Para a ansiedade ")
        fullString.append(NSAttributedString(attachment: imageAttachment))
        titleLabel.attributedText = fullString
        
        self.playButton.layer.cornerRadius = self.playButton.bounds.width/2
        self.coverView.layer.cornerRadius = 35
        
        luciana.rate = 0.35
    }
    
    @IBAction func didTapPlayButton(_ sender: UIButton) {
        didTapPlay.toggle()

        //resume playback
        if didTapPlay {
            self.playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            
            luciana.resume()
        
            if !luciana.isSpeaking(){
                luciana.say(something: meditationText)
            }
        }
        //pause playback
        else {
            self.playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            luciana.pause()
        }
    }
    
}
