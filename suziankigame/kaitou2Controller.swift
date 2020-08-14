
//
//  kaitouController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/12.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class kaitouController2: UIViewController {
    
    var argString21 = ""
    var argString22 = ""
    
    @IBOutlet var nyuryoku2: UILabel!
    @IBOutlet var seitou2: UILabel!
    @IBOutlet var hyouka2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func mouitido2(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func kakutei2(){
        seitou2.text = String(argString21)
        nyuryoku2.text = String(argString22)
        if nyuryoku2.text == seitou2.text{
            hyouka2.text = "おめでとう！"
        }else{
            hyouka2.text = "ざんねん..."
        }
    }
    
    @IBAction func nanido(){
         self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
