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
    
    @IBAction func CPressed(_ sender: UIButton) {
        playSound(note: "C")
    }

    @IBAction func DPressed(_ sender: UIButton) {
        playSound(note: "D")
    }
    
    @IBAction func EPressed(_ sender: UIButton) {
        playSound(note: "E")
    }
    
    @IBAction func FPressed(_ sender: UIButton) {
        playSound(note: "F")
    }
    
    @IBAction func GPressed(_ sender: UIButton) {
        playSound(note: "G")
    }
    
    @IBAction func APressed(_ sender: UIButton) {
        playSound(note: "A")
    }
    
    @IBAction func BPressed(_ sender: UIButton) {
        playSound(note: "B")
    }
    
    func playSound(note: String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        try! AVAudioSession.sharedInstance().setCategory(.playback)
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
