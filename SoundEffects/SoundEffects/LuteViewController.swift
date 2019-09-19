//
//  LuteViewController.swift
//  SoundEffects
//
//  Created by wendy on 2019/9/17.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit

class LuteViewController: UIViewController {

    @IBOutlet weak var btnLute0: UIButton!
    @IBOutlet weak var btnLute1: UIButton!
    @IBOutlet weak var btnLute2: UIButton!
    @IBOutlet weak var btnLute3: UIButton!
    
    let soundList:[String] = ["lute0", "lute1", "lute2", "lute3"]
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
        let btnItems:[UIButton] = [btnLute0,btnLute1,btnLute2,btnLute3]
        let updateUI = RenewInterface()
        updateUI.UpdateUI(btnList: btnItems)
    }
    
    @IBAction func SongPressed(_ sender: UIButton) {
        let btnItems:[UIButton] = [btnLute0,btnLute1,btnLute2,btnLute3]
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
