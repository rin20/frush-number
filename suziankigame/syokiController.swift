//
//  syokiController.swift
//  suziankigame
//
//  Created by Mitsu Kumagai on 2020/08/13.
//  Copyright © 2020 kumagai rin. All rights reserved.
//

import UIKit

class syokiController: UIViewController {
    
    @IBOutlet var Joukyu: UIButton!
    @IBOutlet var Tyukyu: UIButton!
    @IBOutlet var Kakyu: UIButton!
    @IBOutlet var Help: UIButton!

  
    override func viewDidLoad() {
        super.viewDidLoad()

        Joukyu.layer.cornerRadius = 15
        Tyukyu.layer.cornerRadius = 15
        Kakyu.layer.cornerRadius = 15
        Help.layer.cornerRadius = 15
        
    }
    
    @IBAction func help(){
        
    }
    
    @IBAction func joukyu(){
        
    }
    

    @IBAction func tyukyu(){
        
    }
    
    @IBAction func kakyu(){
        
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
