//
//  ViewController.swift
//  hustle-mode
//
//  Created by Code Nation on 03/12/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var PowerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var Rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }
    
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden =  false
        darkBlueBG.isHidden = true
        PowerBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.Rocket.frame = CGRect(x: 0, y: 20, width: 406, height: 711)
            
        }) {(finished) in
            
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
        }
    }
    

}

