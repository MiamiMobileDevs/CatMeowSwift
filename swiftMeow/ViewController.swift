//
//  ViewController.swift
//  swiftMeow
//
//  Created by roberto arciniegas on 10/1/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if var filePath = NSBundle.mainBundle().pathForResource("meow", ofType: "wav"){
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAudio(sender: AnyObject) {
        audioPlayer.play()
        println("meow")
    }

}

