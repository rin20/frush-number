//
//  kaitouController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/12.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class kaitouController: UIViewController {
    
    var argString11 = ""
    var argString12 = ""

    @IBOutlet var nyuryoku: UILabel!
    @IBOutlet var seitou: UILabel!
    @IBOutlet var hyouka: UILabel!
    @IBOutlet var Mouitido: UIButton!
    @IBOutlet var Nanido: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Mouitido.layer.cornerRadius = 15
        Nanido.layer.cornerRadius = 15
        
        seitou.text = String(argString11)
        nyuryoku.text = String(argString12)
        if nyuryoku.text == seitou.text{
            hyouka.text = "正解！！"
        }else{
            hyouka.text = "不正解..."
        }
    }
    
    @IBAction func mouitido(){
        argString11 = String("")
        self.dismiss(animated: true, completion: nil)
        }

    @IBAction func nanido(_ sender: Any){
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
