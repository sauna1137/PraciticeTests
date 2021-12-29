//
//  ViewController.swift
//  PraciticeTests
//
//  Created by KS on 2021/12/29.
//

import UIKit

class ViewController: UIViewController {

    var subClass: SubClass!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.subClass = SubClass(viewController: self)
    }

    class SubClass {
        private let viewController: ViewController

        init(viewController: ViewController) {
            self.viewController = viewController
        }

        func multiply(num1: Int, num2: Int) -> Int {
            return num1 * num2
        }
    }

}

