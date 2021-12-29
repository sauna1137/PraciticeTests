//
//  PraciticeTestsTests.swift
//  PraciticeTestsTests
//
//  Created by KS on 2021/12/29.
//

import XCTest
@testable import PraciticeTests

class PraciticeTestsTests: XCTestCase {

    var viewController: ViewController!

    override func setUpWithError() throws {
        // テストの開始時に最初に一度呼ばれる関数。テストケースを回すために必要な設定やインスタンスの生成などをここで行います
        try super.setUpWithError()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewController = storyboard.instantiateInitialViewController() as? ViewController
    }

    override func tearDownWithError() throws {
        // テストの終了時に一度呼ばれる関数。
    }

    func testHi() {
        let p = Person("Taro", 160, 50)
        let ret = p.hi()
        XCTAssertEqual(ret, "Hi. I'm \(p.name).")
    }

    func testBmi() {
        let p = Person("Hanako", 140, 40)
        let ret = p.bmi()
        XCTAssertEqual(ret, 20.41)
    }

    func testExample() throws {
        // テスト対象の関数です。この関数一つに対してテストケースを一つ書きます。どうやってテストケースとして判別するかというと、関数名の頭文字が "test" で始まる関数かどうかで識別しているようです。
        viewController.loadViewIfNeeded()
        let subClass = viewController.subClass
        let result = subClass?.multiply(num1: 7, num2: 28)
        XCTAssertEqual(result, 196)
    }

    func testPerformanceExample() throws {
        // パフォーマンスの計測用の関数です。 self.measure {} のクロージャの中に計測したい処理を記述するとその処理にかかった時間を教えてくれます。
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
