//
//  ViewController.swift
//  DeathCode
//
//  Created by 陳宗廷 on 2024/3/15.
//

import UIKit
import AVFoundation

class setPlayerController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var deathCode:Int = 0
    let defaults = UserDefaults.standard
    
    @IBOutlet var randomPlayerA: UIButton!
    @IBOutlet var randomPlayerB: UIButton!
    @IBOutlet var playGame: UIButton!
    
    @IBAction func randomPlayerA(_ sender: Any) {
    
        deathCode = Int.random(in: 10...50)
        defaults.set(deathCode,forKey: "number")
        print("神秘數字是\(deathCode)")
        
        randomPlayerA.layer.borderWidth = 5
        randomPlayerA.layer.borderColor = UIColor.blue.cgColor
        
        randomPlayerB.layer.borderWidth = 0
        randomPlayerB.layer.borderColor = UIColor.clear.cgColor
        
        playGame.layer.opacity = 1
    }
    
    @IBAction func randomPlayerB(_ sender: Any) {
        deathCode = Int.random(in: 50...100)
        defaults.set(deathCode,forKey: "number")
        print("神秘數字是\(deathCode)")
        
        randomPlayerA.layer.borderWidth = 0
        randomPlayerA.layer.borderColor = UIColor.clear.cgColor
        
        randomPlayerB.layer.borderWidth = 5
        randomPlayerB.layer.borderColor = UIColor.blue.cgColor
        
        playGame.layer.opacity = 1
    }
}

class resultController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var tempDice:Int = 0
    var count:Int = 1
    var sum = 0
    
    @IBOutlet var playPoint: UILabel!
    @IBOutlet var oneDice: UIButton!
    @IBOutlet var twoDice: UIButton!
    @IBOutlet var threeDice: UIButton!
    @IBOutlet var playAgain: UIButton!
    @IBOutlet var deathCodeText: UILabel!
    
    @IBAction func oneDice(_ sender: Any) {
        oneDice.layer.borderWidth = 5
        twoDice.layer.borderWidth = 1
        threeDice.layer.borderWidth = 1
        count = 1
        
        oneDice.layer.cornerRadius = 20
        twoDice.layer.cornerRadius = 20
        threeDice.layer.cornerRadius = 20
        
        oneDice.layer.borderColor = UIColor.black.cgColor
        twoDice.layer.borderColor = UIColor.black.cgColor
        threeDice.layer.borderColor = UIColor.black.cgColor
        
        let generator = UIImpactFeedbackGenerator(style: .light)
           generator.impactOccurred()
    }
    @IBAction func twoDice(_ sender: Any) {
        oneDice.layer.borderWidth = 1
        twoDice.layer.borderWidth = 5
        threeDice.layer.borderWidth = 1
        count = 2
        
        oneDice.layer.cornerRadius = 20
        twoDice.layer.cornerRadius = 20
        threeDice.layer.cornerRadius = 20
        
        oneDice.layer.borderColor = UIColor.black.cgColor
        twoDice.layer.borderColor = UIColor.black.cgColor
        threeDice.layer.borderColor = UIColor.black.cgColor
        
        let generator = UIImpactFeedbackGenerator(style: .light)
           generator.impactOccurred()
    }
    @IBAction func threeDice(_ sender: Any) {
        oneDice.layer.borderWidth = 1
        twoDice.layer.borderWidth = 1
        threeDice.layer.borderWidth = 5
        count = 3
        
        oneDice.layer.cornerRadius = 20
        twoDice.layer.cornerRadius = 20
        threeDice.layer.cornerRadius = 20
        
        oneDice.layer.borderColor = UIColor.black.cgColor
        twoDice.layer.borderColor = UIColor.black.cgColor
        threeDice.layer.borderColor = UIColor.black.cgColor
        
        let generator = UIImpactFeedbackGenerator(style: .light)
           generator.impactOccurred()
    }
    
    @IBAction func playAgain(_ sender: Any) {
        let aaa = defaults.integer(forKey: "number")
//        print("神秘數字是\(deathCode)")
        playPoint.text = "0"
        sum = 0
        playAgain.layer.opacity = 0
        deathCodeText.layer.opacity = 0
    }
    //    搖晃
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
           
           for _ in 1...count {
               tempDice = Int.random(in: 1...6)
               print("這次骰到的點數是\(tempDice)")
               sum = sum + tempDice
               print("點數總數是\(sum)")
//               print("神秘數字是\(deathCodeA)")
           }
            // 骰到的點數
           playPoint.text = String(sum)

            // 連續三次短震
            AudioServicesPlaySystemSound(1521);
//            if (sum >= deathCode) {
//                playPoint.text = "Lose!"
//                deathCodeText.text = "Death code is \(deathCode)"
//                playAgain.layer.opacity = 1
//                deathCodeText.layer.opacity = 1
//                AudioServicesPlaySystemSound(1521);
//            }
        }
        
    }
    
}

class ViewController: UIViewController {
    
    
    
    
}

