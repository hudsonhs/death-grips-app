//
//  ViewController.swift
//  DeathGripsApp
//
//  Created by Hudson Harriman-Smith on 1/7/17.
//  Copyright © 2017 Hudson Harriman-Smith. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    @IBOutlet weak var lyricLabel: UILabel!
    let lyricGenerator = LyricGenerator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lyricLabel.text = lyricGenerator.getLyric()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showLyric() {
        lyricLabel.text = lyricGenerator.getLyric()
        let url = Bundle.main.url(forResource: "yuh", withExtension: "mp3")!
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

