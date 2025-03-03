//
//  ViewController.swift
//  Counter
//
//  Created by МAK on 19.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    var count = 0
    func currentDate() -> String {
        let today = Date.now
        lazy var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy-hh-mm-ss"
        var date = dateFormatter.string(from: today)
        return date
    }
    func increment() {
        count += 1
    }
    func decrement() {
        count -= 1
    }
    func reset() {
        count = 0
    }
    
    @IBOutlet private weak var counterText: UILabel!
    @IBOutlet private weak var counterChangeList: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func increaseCount() {
        increment()
        counterText.text = String(count)
        counterChangeList.text += "\n\(currentDate()): значение изменено на +1"
    }
    
    @IBAction private func decreaseCount() {
        if count == 0 {
            counterChangeList.text += "\nдата: - попытка уменьшить значение меньше 0"
        } else {
            decrement()
            counterText.text = String(count)
            counterChangeList.text += "\n\(currentDate()): значение изменено на -1"
        }
    }
    
    
    @IBAction private func refreshCount() {
        counterText.text = "0"
        counterChangeList.text += "\n\(currentDate()): значение cброшено"
    }
}
