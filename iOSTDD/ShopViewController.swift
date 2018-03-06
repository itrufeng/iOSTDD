//
// Created by Jian Zhang on 3/4/18.
// Copyright (c) 2018 itrufeng. All rights reserved.
//

import Foundation
import UIKit

class ShopViewController: UITableViewController {
  private let shop: [Shop]

  init(shop: [Shop]) {
    self.shop = shop
    super.init(style: .plain)
  }

  required init?(coder aDecoder: NSCoder) {
    self.shop = []
    super.init(coder: aDecoder)
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.shop.count
  }
}
