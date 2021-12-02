//
//  SpeechService.swift
//  Mindless
//
//  Created by Marina De Pazzi on 01/12/21.
//

import AVFoundation

class SpeechService {
    
    private let synthesizer = AVSpeechSynthesizer()
    
    var rate: Float = AVSpeechUtteranceDefaultSpeechRate
    var voice = AVSpeechSynthesisVoice(language: "ja-JP")
    
    func say(something phrase: String) {
        let utterance = AVSpeechUtterance(string: phrase)
        utterance.rate = rate
        utterance.voice = voice
        
        synthesizer.speak(utterance)
        
        print(synthesizer.isSpeaking)
    }
    
    func pause() {
        if synthesizer.isSpeaking {
            synthesizer.pauseSpeaking(at: .immediate)
        }
    }
    
    func resume() {
        if synthesizer.isPaused {
            synthesizer.continueSpeaking()
        }
    }
    
    func isSpeaking() -> Bool { return synthesizer.isSpeaking }
}
