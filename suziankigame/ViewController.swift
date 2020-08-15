
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
        number = Int.random(in:1000000...9999999)
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toView"{
            let nextView = segue.destination as! kaitouController
            nextView.argString11 = String(number)
            nextView.argString12 = kakikomi.text!
        }
    }
    
    @objc func up() {
        count = count + 0.01
        if count > 0.7{
            timer.invalidate()
            randam.text = String("ーーーーーーー")
        }
    }
    
    @IBAction func gamestart() {
        kakikomi.text = ""
        
        randam.text = String(number)
        if !timer.isValid{
            count = 0.0
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
    
    @IBAction func nanido(){
        self.dismiss(animated: true, completion: nil)
    }
    
}

