//
//  String+Extension.swift
//  Fitkal
//
//  Created by İSMAİL AÇIKYÜREK on 1.10.2023.
//


import UIKit
extension String {

    var underLined: NSAttributedString {
      NSMutableAttributedString(string: self, attributes: [.underlineStyle: NSUnderlineStyle.thick.rawValue])
    }

}
