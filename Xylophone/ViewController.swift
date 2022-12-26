//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func NotePressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
        playSound(sender.currentTitle!)
    }
    
    
    
    
    func playSound(_ note: String){
        let url = Bundle.main.url(forResource: note, withExtension: ".wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}

