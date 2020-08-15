
//
//  ViewController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/10.
//  Copyright © 2020 kumagai rin. All rights reserved.
//


import UIKit

class View3Controller: UIViewController {
    
    @IBOutlet var randam3: UILabel!
    @IBOutlet var kakikomi3: UITextField!
    
    var number3: Int = 0
    var count3: Float = 0.0
    var timer3: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toView3"{
            let nextView = segue.destination as! kaitouController3
            nextView.argString31 = String(number3)
            nextView.argString32 = kakikomi3.text!
        }
    }
    
    @objc func up() {
        count3 = count3 + 0.01
        if count3 > 0.5{
            timer3.invalidate()
            randam3.text = String("ーーー")
        }
    }
    
    @IBAction func gamestart3() {
       kakikomi3.text = ""
        number3 = Int.random(in:100...999)
        randam3.text = String(number3)
        if !timer3.isValid{
            count3 = 0.0
            timer3 = Timer.scheduledTimer(
                timeInterval:0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            )
        }
        
    }
    @IBAction func kettei3() {
        
    }
 
    @IBAction func nanido(){
        self.dismiss(animated: true, completion: nil)
    }
}

