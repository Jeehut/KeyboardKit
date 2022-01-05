//
//  KKL10nTests.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-03-17.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import KeyboardKit

class KKL10nTests: QuickSpec {
    
    override func spec() {
        
        describe("bundle path for locale") {
            
            it("is valid for all keyboard locales") {
                KeyboardLocale.allCases.forEach {
                    let bundle = Bundle.module
                    let path = bundle.bundlePath(for: $0.locale) ?? ""
                    expect(path).toNot(beNil())
                    expect(FileManager.default.fileExists(atPath: path)).to(beTrue())
                }
            }
        }
    }
}