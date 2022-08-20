//
//  ViewController.swift
//  xylophone
//
//  Created by Yan Oliveira on 18/08/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(soundName: (sender.titleLabel?.text)!)
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        try! AVAudioSession.sharedInstance().setCategory(.playback)
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
