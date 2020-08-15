
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seitou3.text = String(argString31)
        nyuryoku3.text = String(argString32)
        if nyuryoku3.text == seitou3.text{
            hyouka3.text = "おめでとう！"
        }else{
            hyouka3.text = "ざんねん..."
        }
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func mouitido3(){
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
