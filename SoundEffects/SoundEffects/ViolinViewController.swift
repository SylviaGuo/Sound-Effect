//
//  ViewController.swift
//  SoundEffects
//
//  Created by Chnli on 2019/9/14.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit
import AVFoundation

class ViolinViewController: UIViewController {

    let soundList:[String] = ["violin0", "violin1", "violin2", "violin3"]

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
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PlayAutoViewController.audioPlayer?.pause()
    }
    @IBAction func SongPressed(_ sender: UIButton) {
        
        let btnItems:[UIButton] = [btnViolin0,btnViolin1,btnViolin2,btnViolin3]
        let PlayAudio = PlayAutoViewController(btnList: btnItems ,sender: sender, soundList: soundList, backgroundColor: UIColor.white, fontColor: UIColor.red)
        PlayAudio.ChangeUI()
        PlayAudio.PlayAudio()
        
    }
    
}

