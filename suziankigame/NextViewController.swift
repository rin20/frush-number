import UIKit

class NextViewController: UIViewController {
    
    
    
    @IBOutlet var randam: UILabel!
    @IBOutlet var kakikomi: UITextField!
    @IBOutlet var gameStart: UIButton!
    @IBOutlet var ok: UIButton!
    @IBOutlet var Nanido: UIButton!
    @IBOutlet var keta: UILabel!

    var number: Int = 0
    var count: Float = 0.0
    var timer: Timer = Timer()
    
    var A: String = ""
    var B: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameStart.layer.cornerRadius = 15
        ok.layer.cornerRadius = 15
        Nanido.layer.cornerRadius = 15
        
        kakikomi.text = ""
        kakikomi.isHidden = true
        
        keta.text = String(A)
        randam.text = String(B)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        kakikomi.text = ""
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "A"{
            let nextView = segue.destination as! NextKaitoController
            nextView.argString11 = String(A)
            nextView.argString12 = String(number)
            nextView.argString13 = kakikomi.text!
        }
    }
    
    @objc func up() {
        count = count + 0.01
        if keta.text == "３桁"{
            if count > 0.05{
                        timer.invalidate()
                        randam.text = String("ーーー")
                    }
        }else if keta.text == "５桁"{
            if count > 0.1{
                timer.invalidate()
                randam.text = String("ーーーーー")
            }
        }else if keta.text == "７桁"{
            if count > 0.3{
                timer.invalidate()
                randam.text = String("ーーーーーーー")
            }
        }

    }
    
    @IBAction func gamestart() {
        kakikomi.text = ""
        if keta.text == "３桁"{
            number = Int.random(in:100...999)
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
                   kakikomi.isHidden = false
    }else if keta.text == "５桁"{
        number = Int.random(in:10000...99999)
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
               kakikomi.isHidden = false
}else if keta.text == "７桁"{
    number = Int.random(in:1000000...9999999)
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
           kakikomi.isHidden = false
}
        
    }
    
   
    
    @IBAction func kettei() {
        
    }
    
    @IBAction func nanido(){
        self.dismiss(animated: true, completion: nil)
    }
    
}


