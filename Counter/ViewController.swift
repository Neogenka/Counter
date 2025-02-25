//
//  ViewController.swift
//  Counter
//
//  Created by МAK on 19.02.2025.
//

import UIKit

class ViewController: UIViewController {
    class Counter {
        var count = 0
        func currentDate() -> String {
            let today = Date.now
            let dateFormatter = DateFormatter()
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
    }
    
    let counter = Counter()
    
    
    
    @IBOutlet weak var counterText: UILabel!
    @IBOutlet weak var counterChangeList: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func increaseCount() {
            counter.increment()
            counterText.text = String(counter.count)
            counterChangeList.text += "\n\(counter.currentDate()): значение изменено на +1"
    }
    
    @IBAction func decreaseCount() {
        if counter.count == 0 {
            counterChangeList.text += "\nдата: - попытка уменьшить значение меньше 0"
        } else {
            counter.decrement()
            counterText.text = String(counter.count)
            counterChangeList.text += "\n\(counter.currentDate()): значение изменено на -1"
        }
    }
    
    
    @IBAction func refreshCount() {
        counterText.text = "0"
        counterChangeList.text += "\n\(counter.currentDate()): значение cброшено"
    }
}
