//
//  ViewController.swift
//  Fitkal
//
//  Created by İSMAİL AÇIKYÜREK on 1.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
  let mainPageView = MainPageView()
  override func viewDidLoad() {
    super.viewDidLoad()
    view = mainPageView
    view.backgroundColor = .red
  }


}

