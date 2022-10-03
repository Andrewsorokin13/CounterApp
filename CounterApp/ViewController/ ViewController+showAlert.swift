//
//  ViewController+showAlert.swift
//  CounterApp
//
//  Created by Андрей Сорокин on 02/10/2022.
//

import UIKit

extension ViewController {
    
   func showAlert() {
        let alertMessange = UIAlertController(title: "Только вперед!", message: "Упс... в минус уйти не получится)", preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "Ладно", style: .default)
        alertMessange.addAction(buttonOK)
        self.present(alertMessange, animated: true, completion: nil)
    }
}
