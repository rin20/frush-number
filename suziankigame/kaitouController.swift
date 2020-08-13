//
//  kaitouController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/12.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class kaitouController: UIViewController {
    
    var argString = ""
    var argString2 = ""

    @IBOutlet var nyuryoku: UILabel!
    @IBOutlet var seitou: UILabel!
    @IBOutlet var hyouka: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        seitou.text = argString
        nyuryoku.text = argString2
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func mouitido(){
        self.dismiss(animated: true, completion: nil)
        }

    @IBAction func kakutei(){
        if nyuryoku.text == seitou.text{
            hyouka.text = "おめでとう！"
        }else{
            hyouka.text = "ざんねん..."
        }
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
