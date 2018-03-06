//
//  ShopTableViewCellSpec.swift
//  iOSTDD
//
//  Created by Jian Zhang on 3/6/18.
//  Copyright © 2018 itrufeng. All rights reserved.
//

import Quick
import Nimble
@testable import iOSTDD

class ShopTableViewCellSpec: QuickSpec {
  override func spec() {
    describe("configure") {
      var shopCell: ShopTableViewCell?

      beforeEach {
        shopCell = ShopTableViewCell(style: .default, reuseIdentifier: nil)
        let shop = Shop(name: "黄焖鸡米饭", avatarName: "avatarIconName", rating: 4.9, discount: nil, isExpress: false, timeReliability: false)
        shopCell?.configure(shop: shop)
      }

      it("shows avatar") {
      }

      it("shows name") {
        expect(shopCell?.nameLabel.isHidden).to(beFalse())
      }

      it("has name") {
        expect(shopCell?.nameLabel.text).to(equal("黄焖鸡米饭"))
      }

      it("shows rating") {
      }

      context("when there is discount") {
        it("shows discount") {
        }
      }

      context("when there is no discount") {
        it("hides discount") {
        }
      }
    }
  }
}
