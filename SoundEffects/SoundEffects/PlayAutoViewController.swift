//
//  PlayAutoViewController.swift
//  SoundEffects
//
//  Created by wendy on 2019/9/14.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit
import AVFoundation

class PlayAutoViewController{

    let btnList: [UIButton]
    let soundList: [String]
    let sender: UIButton
    let backgroundColor: String
    
    
    init(btnList: [UIButton], soundList: [String], sender: UIButton, backgroundColor:String){
        self.btnList = btnList
        self.soundList = soundList
        self.sender = sender
        self.backgroundColor = backgroundColor
    }
    
    //changUI
    func ChangeUI(){
        let btnItems: [UIButton] = btnList
        let selectItem = sender.tag
        for index in 0...sender.tag{
            if index != selectItem{
                btnItems[index].backgroundColor = nil
                print("selectItem\(selectItem)")
                print("cancel \(index)")
            }else{
                btnItems[index].backgroundColor = .white
                print("choose \(index)")
            }
        }
    }
    //paly audio
    func PlayAudio(){
        var audioPlayer : AVAudioPlayer?
        let soundLists = soundList
        var soundName = ""
        // Checks to ensure the tag number is within the bounds of the array
        if sender.tag < soundLists.count && sender.tag >= 0 {
            soundName = soundLists[sender.tag]
        }
        if let soundResource = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                // Think of this as putting CD in a CD player
                audioPlayer = try AVAudioPlayer(contentsOf: soundResource)
                
                // Plays the sound file
                audioPlayer?.play()
            } catch  {
                // Catches any errors that might occur while putting the CD in the CD player
                print(error)
            }
        }
    }
}
