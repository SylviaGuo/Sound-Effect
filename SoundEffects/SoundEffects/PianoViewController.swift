//
//  PianoViewController.swift
//  SoundEffects
//
//  Created by wendy on 2019/9/17.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit

class PianoViewController: UIViewController {
    
let soundList:[String] = ["piano0", "piano1", "piano2", "piano3"]
    
    @IBOutlet weak var btnPiano0: UIButton!
    @IBOutlet weak var btnPiano1: UIButton!
    @IBOutlet weak var btnPiano2: UIButton!
    @IBOutlet weak var btnPiano3: UIButton!
    
    //store last time pressed somg
    var previousSender:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //stop audio
        PlayAudio.audioPlayer?.pause()
        //renew interface
        let btnItems:[UIButton] = [btnPiano0,btnPiano1,btnPiano2,btnPiano3]
        let updateUI = RenewInterface()
        updateUI.UpdateUI(btnList: btnItems)
    }

    @IBAction func SongPressed(_ sender: UIButton) {
        let btnItems:[UIButton] = [btnPiano0,btnPiano1,btnPiano2,btnPiano3]
        let PlayAudios = PlayAudio(btnList: btnItems ,sender: sender, soundList: soundList, backgroundColor: UIColor.white, fontColor: UIColor.black)
        //stop play the song
        if previousSender == sender && PlayAudios.isPlaying() == true{
            PlayAudios.StopPlay()
            previousSender = sender
        }else{ //play
            PlayAudios.ChangeUI()
            PlayAudios.Play()
            previousSender = sender
        }
    }
    
}
