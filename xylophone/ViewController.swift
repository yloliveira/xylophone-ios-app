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
        playSound(note: (sender.titleLabel?.text)!)
    }
    
    func playSound(note: String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        try! AVAudioSession.sharedInstance().setCategory(.playback)
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
