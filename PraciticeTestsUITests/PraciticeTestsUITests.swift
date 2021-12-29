//
//  PraciticeTestsUITests.swift
//  PraciticeTestsUITests
//
//  Created by KS on 2021/12/29.
//

import XCTest

class PraciticeTestsUITests: XCTestCase {

    override func setUpWithError() throws {
        // テストの開始時に最初に一度呼ばれる関数。テストケースを回すために必要な設定やインスタンスの生成などをここで行います

        continueAfterFailure = false


    }

    override func tearDownWithError() throws {
        // テストの終了時に一度呼ばれる関数。
    }

    func testExample() throws {
        // テスト対象の関数です。この関数一つに対してテストケースを一つ書きます。どうやってテストケースとして判別するかというと、関数名の頭文字が "test" で始まる関数かどうかで識別しているようです。

        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // パフォーマンスの計測用の関数です。 self.measure {} のクロージャの中に計測したい処理を記述するとその処理にかかった時間を教えてくれます。
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
