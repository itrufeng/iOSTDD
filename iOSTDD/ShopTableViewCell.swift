//
// Created by Jian Zhang on 3/6/18.
// Copyright (c) 2018 itrufeng. All rights reserved.
//

import Foundation
import UIKit

class ShopTableViewCell: UITableViewCell {
  let nameLabel = UILabel(frame: .zero)

  func configure(shop: Shop) {
    nameLabel.text = shop.name
  }
}
