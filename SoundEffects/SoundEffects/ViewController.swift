//
//  ViewController.swift
//  SoundEffects
//
//  Created by Chnli on 2019/9/14.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //var audioPlayer : AVAudioPlayer?

    @IBOutlet weak var btnViolin0: UIButton!
    @IBOutlet weak var btnViolin1: UIButton!
    @IBOutlet weak var btnViolin2: UIButton!
    @IBOutlet weak var btnViolin3: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SongPressed(_ sender: UIButton) {
        let soundList = ["violin0", "violin1", "violin2", "violin3"]
        let btnItems = [btnViolin0,btnViolin1,btnViolin2,btnViolin3]
        let PlayAudio = PlayAutoViewController(btnList: btnItems as! [UIButton], soundList: soundList, sender: sender, backgroundColor: "white")
        PlayAudio.ChangeUI()
        PlayAudio.PlayAudio()
        
    }
    
//    func ChangeUI(_ sender: UIButton){
//        let btnItems = [btnViolin0,btnViolin1,btnViolin2,btnViolin3]
//        let selectItem = sender.tag
//        for index in 0...3{
//            if index != selectItem{
//                btnItems[index]?.backgroundColor = nil
//            }else{
//                btnItems[index]?.backgroundColor = .white
//            }
//        }
//    }
    
//    func PlayAudio(_ sender: UIButton){
//        let soundList = ["violin0", "violin1", "violin2", "violin3"]
//        var soundName = ""
//        // Checks to ensure the tag number is within the bounds of the array
//        if sender.tag < soundList.count && sender.tag >= 0 {
//            soundName = soundList[sender.tag]
//        }
//        if let soundResource = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
//            do {
//                // Think of this as putting CD in a CD player
//                audioPlayer = try AVAudioPlayer(contentsOf: soundResource)
//
//                // Plays the sound file
//                audioPlayer?.play()
//            } catch  {
//                // Catches any errors that might occur while putting the CD in the CD player
//                print(error)
//            }
//        }
//    }
    
}

