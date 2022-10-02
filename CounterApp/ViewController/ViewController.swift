//
//  ViewController.swift
//  CounterApp
//
//  Created by Андрей Сорокин on 02/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var countLable: UILabel!
    @IBOutlet var buttonPlusAndMinus: [UIButton]!
    
    //MARK: - Private property
    private var score = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonUI()
    
    }
    
    //MARK: - IBAction
    @IBAction func pressedOnButton(_ sender: UIButton) {
        switch sender.tag {
        case 0 :
            increment()
        case 1 :
            decrement()
         
        default:
           fatalError()
        }
    }
    
    //MARK: - Private func
    private func setupButtonUI() {
        buttonPlusAndMinus.forEach{ button in
            button.layer.cornerRadius = 40
            button.layer.borderWidth = 0.2
        }
    }
    
    private func increment() {
        score += 1
        countLable.text = String(score)
    }
    
    private func decrement(){
        if score <= 0 {
            showAlert()
            score = 0
            countLable.text = String(score)
        } else {
            score -= 1
            countLable.text = String(score)
        }
    }
}
