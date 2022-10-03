//
//  ViewController.swift
//  CounterApp
//
//  Created by Андрей Сорокин on 02/10/2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet weak private var countLable: UILabel!
    @IBOutlet private var buttonPlusAndMinus: [UIButton]!
    // MARK: - Private Properties
    private var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonUI()
    }
    
    // MARK: - IBAction
    @IBAction private func incrementCounterButton() {
        increment()
    }
    
    @IBAction private func decrementCounterButton() {
        decrement()
    }
    
    // MARK: - Private Methods
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
        switch score {
        case ...0:
            showAlert()
        default:
            score -= 1
            countLable.text = String(score)
        }
    }
}
