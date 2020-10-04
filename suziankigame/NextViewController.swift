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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameStart.layer.cornerRadius = 15
        ok.layer.cornerRadius = 15
        Nanido.layer.cornerRadius = 15
        number = Int.random(in:1000000...9999999)
        
        kakikomi.text = ""
        kakikomi.isHidden = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        kakikomi.text = ""
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
    
   
    
    @IBAction func kettei() {
        
    }
    
    @IBAction func nanido(){
        self.dismiss(animated: true, completion: nil)
    }
    
}


