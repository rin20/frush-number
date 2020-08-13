//
//  ViewController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/10.
//  Copyright © 2020 kumagai rin. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var randam: UILabel!
    @IBOutlet var kakikomi: UITextField!
        
    var number: Int = 0
    var count: Float = 0.0
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toView"{
            let nextView = segue.destination as! kaitouController
            nextView.argString = randam.text!
            nextView.argString2 = kakikomi.text!
        }
    }
    
    @objc func up() {
        count = count + 0.01
        if count > 0.1{
            timer.invalidate()
//            randam.text = String("-------")
        }
    }
    
    @IBAction func gamestart() {
        number = Int.random(in:1000000...9999999)
        randam.text = String(number)
        if !timer.isValid{
            timer = Timer.scheduledTimer(
                timeInterval:0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            )
        }
        
    }
    @IBAction func kettei() {
        
    }
    
}

