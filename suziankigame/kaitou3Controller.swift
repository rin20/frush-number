
//
//  kaitouController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/12.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class kaitouController3: UIViewController {
    
    var argString31 = ""
    var argString32 = ""
    
    @IBOutlet var nyuryoku3: UILabel!
    @IBOutlet var seitou3: UILabel!
    @IBOutlet var hyouka3: UILabel!
    @IBOutlet var Mouitido: UIButton!
    @IBOutlet var Nanido: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Mouitido.layer.cornerRadius = 15
        Nanido.layer.cornerRadius = 15
        
        seitou3.text = String(argString31)
        nyuryoku3.text = String(argString32)
        if nyuryoku3.text == seitou3.text{
            hyouka3.text = "正解！！"
        }else{
            hyouka3.text = "不正解..."
        }
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func mouitido3(){
        let parentVC = presentingViewController as! View3Controller
        parentVC.kakikomi3.text = ""
        self.dismiss(animated: true, completion: nil)
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
