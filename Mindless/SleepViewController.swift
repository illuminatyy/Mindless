//
//  SleepViewController.swift
//  Mindless
//
//  Created by Natália Brocca dos Santos on 02/12/21.
//

import UIKit

class SleepViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var imageSleepWell: UIImageView!
    @IBOutlet weak var playPauseButtonSleepWell: UIButton!
    @IBOutlet weak var collectionViewChapters: UICollectionView!
    
    var chapters: [String] = ["Noite relaxante", "Sonhos fantásticos", "Durma como nunca"]
    var chaptersImage: [String] = ["moon.stars.fill", "sparkles", "moon.zzz.fill"]
    var chaptersColors: [String] = ["relaxNight", "fantasticDreams", "sleepLikeNeverBefore"]
    
    private var didTapStartButton = false
    let waitSpeech: UInt32 = 20
    let waitHalfSpeech: UInt32 = 7
    let luciana = SpeechService()
    let sleepWellSpeech: String = "Relaxe sua mente, pense nas coisas que você deveria ter feito hoje e não fez."
    let sleepWellSpeech2: String = "Sinta seu corpo formigar e preste atenção nas suas dores."
    let sleepWellSpeech3: String = "Perceba seu corpo trabalhar e produzir urina. A sua bexiga começa a encher e incomodar."
    let sleepWellSpeech4: String = "Lembre da sua série preferida e o quanto você gostaria de estar vendo ela agora."
    let sleepWellSpeech5: String = "Agora já é tarde e você precisa acordar cedo, escute essas músicas para relaxar."
    let sleepWellSpeech6: String = "Você lembrou de desligar a boca do fogão hoje?."
    let sleepWellSpeech7: String = "Pense agora sobre seus compromissos da semana."
    let sleepWellSpeech8: String = "Será que você conseguirá fazer tudo a tempo? Será que o melhor não seria levantar agora e começar a fazer alguma das coisas pendentes?"
    let sleepWellSpeech9: String = "Olhe ao redor. Respire profundamente. Você sente o pó da sujeira entrando pelas suas narinas. A quanto tempo você não limpa o seu quarto?"
    let sleepWellSpeech10: String = "Agora durma em paz."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set cornerRadius
        imageSleepWell.layer.cornerRadius = 35
        playPauseButtonSleepWell.layer.cornerRadius = self.playPauseButtonSleepWell.bounds.width/2
        //delegates
        collectionViewChapters.delegate = self
        collectionViewChapters.dataSource = self
        
        collectionViewChapters.isHidden = true
        
        luciana.rate = 0.38
    }
    
    @IBAction func didTapStartMeditation(_ sender: Any) {
        didTapStartButton.toggle()
        if didTapStartButton {
            self.playPauseButtonSleepWell.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            luciana.resume()
            
            if !luciana.isSpeaking(){
                DispatchQueue.global().async {
                    self.luciana.say(something: self.sleepWellSpeech)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech2)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech3)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech4)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech5)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech6)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech7)
                    sleep(self.waitHalfSpeech)
                    self.luciana.say(something: self.sleepWellSpeech8)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech9)
                    sleep(self.waitSpeech)
                    self.luciana.say(something: self.sleepWellSpeech10)
                    sleep(self.waitSpeech)
                }
            }
        }
        else {
            self.playPauseButtonSleepWell.setImage(UIImage(systemName: "play.fill"), for: .normal)
            luciana.pause()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chapters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionViewChapters.dequeueReusableCell(withReuseIdentifier: "episode", for: indexPath) as? SleepCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.descriptionCell.text = chapters[indexPath.row]
        cell.iconImageCell.tintColor = .white
        cell.iconImageCell.image = UIImage(systemName: chaptersImage[indexPath.row])
        cell.shadowView.layer.cornerRadius = 8
        cell.shadowView.backgroundColor = UIColor(named: chaptersColors[indexPath.row])
        
        return cell
    }
}
