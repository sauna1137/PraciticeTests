//
//  Model.swift
//  PraciticeTests
//
//  Created by KS on 2021/12/29.
//

import Foundation

class Person {
    var name = ""
    var height: Double = 0
    var weight: Double = 0

    init(_ name: String, _ height: Double, _ weight: Double) {
        self.name = name
        self.height = height
        self.weight = weight
    }

    func hi() -> String {
        return "Hi. I'm \(self.name)."
    }

    func bmi() -> Double {
        //小数２桁目で切り上げ
        let val = self.weight / (self.height / 100 * self.height / 100) * 100
        return val.rounded() / 100
    }
}
