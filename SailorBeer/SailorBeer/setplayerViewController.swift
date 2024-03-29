//
//  setplayerViewController.swift
//  DeathCode
//
//  Created by 陳宗廷 on 2024/3/19.
//

import UIKit
import AVFoundation

class setplayerViewController: UIViewController {

    var diceNumber:Int!
//    var test:String!
    
    @IBOutlet var randomA: UIButton!
    @IBOutlet var randomB: UIButton!
    
    @IBOutlet var playGame: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBSegueAction func showNumber(_ coder: NSCoder) -> gameinfViewController? {
        let controller =  gameinfViewController(coder: coder)
        controller?.diceCode = diceNumber
        return controller
    }
    
    @IBAction func randomA(_ sender: Any) {
        AudioServicesPlaySystemSound(1519) // Actuate "Pop" feedback (strong boom)
        randomA.layer.borderWidth = 3
        randomB.layer.borderWidth = 0
        randomA.layer.cornerRadius = 20
        randomB.layer.cornerRadius = 0
        randomA.layer.borderColor = UIColor.black.cgColor
        diceNumber = Int.random(in: 1...50)
        playGame.layer.opacity = 1
        print("本次的死亡密碼是\(diceNumber)")
        
    }
    @IBAction func randomB(_ sender: Any) {
        AudioServicesPlaySystemSound(1519) // Actuate "Pop" feedback (strong boom)
        randomB.layer.borderWidth = 3
        randomA.layer.borderWidth = 0
        randomA.layer.cornerRadius = 0
        randomB.layer.cornerRadius = 20
        randomB.layer.borderColor = UIColor.black.cgColor
        diceNumber = Int.random(in: 50...100)
        playGame.layer.opacity = 1
        print("本次的死亡密碼是\(diceNumber)")
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
