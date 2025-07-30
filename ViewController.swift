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

    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func csesi(_ sender: UIButton) {
        
        playSound(sesismi: sender.currentTitle!)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            sender.alpha = 1
        }
    
    }
    
    func playSound(sesismi: String) {
        let url = Bundle.main.url(forResource: sesismi, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}

