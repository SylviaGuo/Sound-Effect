//
//  PlayAutoViewController.swift
//  SoundEffects
//
//  Created by wendy on 2019/9/14.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit
import AVFoundation

class PlayAudio{

    let btnList: [UIButton]
    let soundList: [String]
    let sender:UIButton
    let backgroundColor: UIColor
    let fontColor:UIColor
    static var audioPlayer : AVAudioPlayer?
    
    
    init(btnList: [UIButton], sender: UIButton, soundList: [String], backgroundColor: UIColor, fontColor:UIColor){
        self.btnList = btnList
        self.sender = sender
        self.soundList = soundList
        self.backgroundColor = backgroundColor
        self.fontColor = fontColor
    }
    //stop play
    func StopPlay(){
        PlayAudio.audioPlayer?.pause()
        sender.backgroundColor = nil
        sender.setTitleColor(backgroundColor, for: UIControl.State.normal)
        
    }
    
    //changUI
    func ChangeUI(){
        let btnItems: [UIButton] = btnList
        let selectItem = sender.tag
        for index in 0...btnItems.count-1{
            if index == selectItem{
                btnItems[index].backgroundColor = backgroundColor
                btnItems[index].setTitleColor(fontColor, for: UIControl.State.normal)
            }else{
                btnItems[index].backgroundColor = nil
                btnItems[index].setTitleColor(backgroundColor, for: UIControl.State.normal)
            }
        }
    }
    func isPlaying() ->Bool{
        return PlayAudio.audioPlayer!.isPlaying
    }
    //paly audio
    func Play(){
        let soundLists = soundList
        var soundName = ""
        // Checks to ensure the tag number is within the bounds of the array
        if sender.tag < soundLists.count && sender.tag >= 0 {
            soundName = soundLists[sender.tag]
        }
        if let soundResource = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                // Think of this as putting CD in a CD player
                PlayAudio.audioPlayer = try AVAudioPlayer(contentsOf: soundResource)
                // Plays the sound file
                PlayAudio.audioPlayer?.play()
            } catch  {
                // Catches any errors that might occur while putting the CD in the CD player
                print(error)
            }
        }
    }
}

struct RenewInterface{
    //after leaving the page
    func UpdateUI(btnList:[UIButton]){
        for index in 0...btnList.count-1{
            btnList[index].backgroundColor = nil
            btnList[index].setTitleColor(UIColor.white, for: UIControl.State.normal)
        }
    }
}
