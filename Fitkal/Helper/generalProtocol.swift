//
//  generalProtocol.swift
//  Fitkal
//
//  Created by İSMAİL AÇIKYÜREK on 1.10.2023.
//


import UIKit

@objc protocol GeneralViewProtocol {
    func addView()
    func addTarget()
    func setupUI()
    func layoutUI()
    @objc optional func setupUICustom(title : String, subTitle : String, buttonText: String,image : UIImage)
}
