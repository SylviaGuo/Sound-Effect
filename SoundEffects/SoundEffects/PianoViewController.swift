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
        
        PlayAutoViewController.audioPlayer?.pause()
    }
    @IBAction func SongPressed(_ sender: UIButton) {
        
        let btnItems:[UIButton] = [btnPiano0,btnPiano1,btnPiano2,btnPiano3]
        let PlayAudio = PlayAutoViewController(btnList: btnItems ,sender: sender, soundList: soundList, backgroundColor: UIColor.white, fontColor: UIColor.black)
        PlayAudio.ChangeUI()
        PlayAudio.PlayAudio()
        
    }

}
