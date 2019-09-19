//
//  GuitarViewController.swift
//  SoundEffects
//
//  Created by wendy on 2019/9/18.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit

class GuitarViewController: UIViewController {
    
let soundList:[String] = ["guitar0", "guitar1", "guitar2", "guitar3"]
    
    @IBOutlet weak var btnGuitar0: UIButton!
    @IBOutlet weak var btnGuitar1: UIButton!
    @IBOutlet weak var btnGuitar2: UIButton!
    @IBOutlet weak var btnGuitar3: UIButton!
    
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
        let btnItems:[UIButton] = [btnGuitar0,btnGuitar1,btnGuitar2,btnGuitar3]
        let updateUI = RenewInterface()
        updateUI.UpdateUI(btnList: btnItems)
    }
    
    @IBAction func SongPressed(_ sender: UIButton) {
        let btnItems:[UIButton] = [btnGuitar0,btnGuitar1,btnGuitar2,btnGuitar3]
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
