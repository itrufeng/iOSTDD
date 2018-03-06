//
// Created by Jian Zhang on 3/6/18.
// Copyright (c) 2018 itrufeng. All rights reserved.
//

import Foundation
import UIKit

class ShopTableViewCell: UITableViewCell {
  let nameLabel = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 20))
  let discountLabel = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 100, height: 20))

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.addSubview(nameLabel)
    contentView.addSubview(discountLabel)
    discountLabel.backgroundColor = .red
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  func configure(shop: Shop) {
    nameLabel.text = shop.name
    if let discount = shop.discount, discount.count > 0 {
      discountLabel.isHidden = false
    } else {
      discountLabel.isHidden = true
    }
  }
}
