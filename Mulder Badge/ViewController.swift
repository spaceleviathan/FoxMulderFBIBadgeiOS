//
//  ViewController.swift
//  Muller Badge
//
//  Created by Sam on 2017-10-27.
//  Copyright © 2017 leviathanindustries. All rights reserved.
//

import UIKit
import AVFoundation


var xfilesThemeSoundEffect: AVAudioPlayer! = nil


class ViewController: UIViewController {
    
    @IBOutlet weak var MulderBadgeImageView: UIImageView!
    @IBOutlet weak var XfilesThemeStingButton: UIButton!
    
    
    func playSoundNow() {
        let soundpath = Bundle.main.path(forResource: "xfiles-theme-master", ofType:"m4a")!
        let soundpathurl = URL(fileURLWithPath: soundpath)
        print("Variables Initialized 📝")
        do {
            xfilesThemeSoundEffect = try AVAudioPlayer(contentsOf: soundpathurl)
            print("getting ready to play 🏋️‍♀️")
            xfilesThemeSoundEffect?.play()
            print("playing audio 🎼")
        } catch {
            print("🙀")
            print("uh oh 🛬")
        }
        
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         print("View Loaded 🛫")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func XfilesThemeThemeStingPlay(_ sender: Any) {
        print("Badge Tapped 👆")
        playSoundNow()
        
    }
    
    // Mark: Functions
    


}

