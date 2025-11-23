//
//  ViewController.swift
//  Counter
//
//  Created by Anastasia Belyakova on 16.11.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var counterValueLabel: UILabel!
    @IBOutlet private weak var decrementButton: UIButton!
    @IBOutlet private weak var incrementButton: UIButton!
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var historyOfChangesTextView: UITextView!
    private var counterValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func incrementButtonDidTap(_ sender: Any) {
        counterValue += 1
        counterValueLabel.text = "Значение счётчика: \(counterValue)"
        if let historyOfChanges = historyOfChangesTextView.text {
            historyOfChangesTextView.text = "\(historyOfChanges)\n [\(Date().formatDate())]: значение изменено на +1"
        }
    }

    @IBAction private func decrementButtonDidTap(_ sender: Any) {
        if let historyOfChanges = historyOfChangesTextView.text {
            counterValue -= 1
            if counterValue < 0 {
                historyOfChangesTextView.text = "\(historyOfChanges)\n [\(Date().formatDate())]: попытка уменьшить значение счётчика ниже 0"
                counterValue = 0
            } else {
                counterValueLabel.text = "Значение счётчика: \(counterValue)"
                historyOfChangesTextView.text = "\(historyOfChanges)\n [\(Date().formatDate())]: значение изменено на -1"
            }
        }
    }

    @IBAction private func resetButtonDidTap(_ sender: Any) {
        counterValue = 0
        counterValueLabel.text = "Значение счётчика: \(counterValue)"
        if let historyOfChanges = historyOfChangesTextView.text {
            historyOfChangesTextView.text = "\(historyOfChanges)\n [\(Date().formatDate())]: значение сброшено"
        }
    }

}

