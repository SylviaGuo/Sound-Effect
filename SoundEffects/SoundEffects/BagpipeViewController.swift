//
//  BagpipeViewController.swift
//  SoundEffects
//
//  Created by wendy on 2019/9/18.
//  Copyright © 2019 Chunli. All rights reserved.
//

import UIKit

class BagpipeViewController: UIViewController {

    let soundList:[String] = ["bagpipe0", "bagpipe1", "bagpipe2", "bagpipe3"]
    
    @IBOutlet weak var btnBagpipe0: UIButton!
    @IBOutlet weak var btnBagpipe1: UIButton!
    @IBOutlet weak var btnBagpipe2: UIButton!
    @IBOutlet weak var btnBagpipe3: UIButton!
    
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
        let btnItems:[UIButton] = [btnBagpipe0,btnBagpipe1,btnBagpipe2,btnBagpipe3]
        let updateUI = RenewInterface()
        updateUI.UpdateUI(btnList: btnItems)
    }
    
    @IBAction func SongPressed(_ sender: UIButton) {
        let btnItems:[UIButton] = [btnBagpipe0,btnBagpipe1,btnBagpipe2,btnBagpipe3]
        let PlayAudios = PlayAudio(btnList: btnItems ,sender: sender, soundList: soundList, backgroundColor: UIColor.white, fontColor: UIColor.blue)
        PlayAudios.ChangeUI()
        PlayAudios.Play()
    }
}
