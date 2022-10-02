//
//  ViewController.swift
//  CounterApp
//
//  Created by Андрей Сорокин on 02/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var counterLable: UILabel!
    
    private var score = 0

    //MARK: - IBAction
    @IBAction func tappedAddButton(_ sender: UIButton) {
        score += 1
        counterLable.text = String(score)
    }
}

