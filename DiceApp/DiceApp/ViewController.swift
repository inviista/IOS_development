//
//  ViewController.swift
//  DiceApp
//
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftDiceImageView: UIImageView!
    
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceImages = [
                    UIImage(named: "dice1"),
                    UIImage(named: "dice2"),
                    UIImage(named: "dice3"),
                    UIImage(named: "dice4"),
                    UIImage(named: "dice5"),
                    UIImage(named: "dice6")
                ]
        UIView.animate(withDuration: 0.2) {
            self.leftDiceImageView.transform = CGAffineTransform(rotationAngle: .pi)
            self.rightDiceImageView.transform = CGAffineTransform(rotationAngle: -.pi)
        } completion: { _ in
            self.leftDiceImageView.transform = .identity
            self.rightDiceImageView.transform = .identity
        }
        
        leftDiceImageView.image = diceImages.randomElement() ?? UIImage(named: "dice1")
        rightDiceImageView.image = diceImages.randomElement() ?? UIImage(named: "dice1")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftDiceImageView.image = UIImage(named: "dice1")
        rightDiceImageView.image = UIImage(named: "dice1")
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollButtonPressed(UIButton())
        }
    }

}

