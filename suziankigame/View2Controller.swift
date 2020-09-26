
//
//  ViewController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/10.
//  Copyright © 2020 kumagai rin. All rights reserved.
//


import UIKit

class View2Controller: UIViewController {
    
    @IBOutlet var hyouji: UILabel!
    @IBOutlet var randam2: UILabel!
    @IBOutlet var kakikomi2: UITextField!
    @IBOutlet var gameStart: UIButton!
    @IBOutlet var ok: UIButton!
    @IBOutlet var Nanido: UIButton!
    @IBOutlet var re: UIButton!
    
    var number2: Int = 0
    var count2: Float = 0.0
    var timer2: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameStart.layer.cornerRadius = 15
        ok.layer.cornerRadius = 15
        Nanido.layer.cornerRadius = 15
        re.layer.cornerRadius = 15
        number2 = Int.random(in:10000...99999)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toView2"{
            let nextView = segue.destination as! kaitouController2
            nextView.argString21 = String(number2)
            nextView.argString22 = kakikomi2.text!
        }
    }
    
    @objc func up() {
        count2 = count2 + 0.01
        if count2 > 0.5{
            timer2.invalidate()
            randam2.text = String("ーーーーー")
        }
    }
    
    @IBAction func gamestart2() {
        kakikomi2.text = ""
        number2 = Int.random(in:10000...99999)
        randam2.text = String(number2)
        if !timer2.isValid{
            count2 = 0.0
            timer2 = Timer.scheduledTimer(
                timeInterval:0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            )
        }
        
    }
    
    @IBAction func re2() {
        kakikomi2.text = ""
        number2 = Int.random(in:1000000...9999999)
        randam2.text = String(number2)
        if !timer2.isValid{
            count2 = 0.0
            timer2 = Timer.scheduledTimer(
                timeInterval:0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            )
        }
        
    }
    
    @IBAction func kettei2() {
        
    }
    
    @IBAction func nanido(){
        self.dismiss(animated: true, completion: nil)
    }
}

