
//  ViewController.swift
//  Mindless
//
//  Created by Natália Brocca dos Santos on 30/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageGuiada: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    
    let joao = SpeechService()
    var apertouBotao: Bool = false
    
    @IBAction func pauseButton(_ sender: Any) {
        
        apertouBotao.toggle()
        if apertouBotao {
            self.playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            joao.resume()
            if !joao.isSpeaking() {
                joao.say(something:
                            "Agora, respire rapidamente, sentindo o ar entrando e saindo de suas narinas, muito rapidamente. Mimique as batidas de um funk 150 bpm. Simplesmente volte seu foco mental para o a respiração, para o ar entrando, e saindo… Faça tudo no seu ritmo, mas lembre-se que na verdade você deveria estar estudando, trabalhando, cuidando melhor da sua saúde e que o dólar está muito alto. Só entregue-se ao movimento da sua respiração. Sinta as tensões do corpo se formando, os músculos pedindo socorro mais e mais a cada respiração. Esse é o seu momento, e a única coisa a fazer é pensar sobre todas as coisas que podem acontecer em um futuro hipotético sobre o qual você não tem controle, se entregue. Agora, procure visualizar uma estrela brilhante no centro do seu peito, de cor dourada. Veja como ela aparece na sua mente. Pode ser uma grande bola de luz, uma mandala, uma estrela de várias pontas, use a sua imaginação e visualize da maneira que você mais gostar. Se tiver dificuldades em visualizar não se preocupe, imagine como puder e permita-se simplesmente relaxar. Se sentir que pode ajudar, coloque suas mãos sobre o peito Aos poucos, essa estrela vai ganhando mais energia, tomando mais forma, e ela começa então a pegar fogo, preocupantemente inflamável.Você, agora, está se conectando com a sua luz interior, a sua fonte infinita de ódio, rancor, e atitudes impulsivas. Saiba, que a cada vez que você fizer essa meditação, esse processo ficará mais fácil, e você sentirá cada vez mais a força do ódio em contato com a sua luz. Visualize seu incendio-me e repita  mentalmente comigo: Eu vou ter boas respostas sobre o feriado de natal. Eu vou responder sobre os namoradinhos, eu vou falar sobre política, eu vou oferecer minha eterna e incondicional fonte de desprezo por qualquer coisa que me incomode levemente. Sempre que eu me sentir pra baixo, estressado, eu consigo acessar facilmente a minha raiva, a minha luz interior e então eu posso reagir inapropriadamente nas situações mais inusitadas  Isso, você tem em suas mãos a chave para encontrar a sua raiva. Leve para o seu dia a dia esta visualização, e sinta a diferença. Parabéns pela sua jornada dentro de si mesmo, não estamos acostumados a fazer isso, e portanto pode ser que você tenha encontrado dificuldades. Quero te dizer para não se preocupar. Como tudo na vida, a prática deixa o processo mais fácil, portanto não se esqueça de continuar praticando para ficar cada vez mais conectado com a sua raiva. Quando quiser, volte a inspirar rapidamente, sentindo mais sesu pulmões ficarem exaustos, então deite-se no chão, e fique em silêncio pensando naquela resposta que você não deu no momento perfeito pra arrasar emocionalmente alguém escroto.Comece a ouvir melhor os sons a sua volta, mexa os dedos das mãos, dos pés… e vá retornando pra essa infeliz realidade do proletariado brasileiro. Trazendo consigo essa sensação de desesperança, de melancolia, e procurando levar essa sensação para o resto do seu dia e de sua semana."
                         
                )
            }
        }
        
        else {
            self.playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            joao.pause()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playButton.layer.cornerRadius = self.playButton.bounds.width/2
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        self.playButton.layer.cornerRadius = self.playButton.bounds.width/2
        
        
    }
}


