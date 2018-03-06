//
//  ViewController.swift
//  iOSTDD
//
//  Created by Jian Zhang on 1/15/18.
//  Copyright © 2018 itrufeng. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // MARK: Actions
  @IBAction func didFoodButtonTouched(_ sender: Any) {
    let shopViewController = ShopViewController(shop: data)
    navigationController?.pushViewController(shopViewController, animated: true)
  }
}
