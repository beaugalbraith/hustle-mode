//
//  ViewController.swift
//  HustleMode
//
//  Created by gem on 7/14/17.
//  Copyright © 2017 beau. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var darkBlueBackground: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var rocketImage: UIImageView!
    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var cloudsImage: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var onOffLabel: UILabel!
    @IBAction func powerSwitched(_ sender: UIButton) {
        cloudHolder.isHidden = false
        darkBlueBackground.isHidden = true
        powerButton.isHidden = true
        audioPlayer.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketImage.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
            
        }) {(finished) in
            self.hustleLabel.isHidden = false
            self.onOffLabel.isHidden = false
        }
    }
    
    var audioPlayer: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    


}

