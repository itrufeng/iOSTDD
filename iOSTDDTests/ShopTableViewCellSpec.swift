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
        beforeEach {
          shopCell = ShopTableViewCell(style: .default, reuseIdentifier: nil)
          let discounts = [Discount(type: "首", message: "新用户下单立减15元")]
          let shop = Shop(name: "黄焖鸡米饭", avatarName: "avatarIconName", rating: 4.9, discount: discounts, isExpress: false, timeReliability: false)
          shopCell?.configure(shop: shop)
        }

        it("shows discount") {
          expect(shopCell?.discountLabel.isHidden).to(beFalse())
        }
      }

      context("when there is no discount") {
        beforeEach {
          shopCell = ShopTableViewCell(style: .default, reuseIdentifier: nil)
          let shop = Shop(name: "黄焖鸡米饭", avatarName: "avatarIconName", rating: 4.9, discount: nil, isExpress: false, timeReliability: false)
          shopCell?.configure(shop: shop)
        }

        it("hides discount") {
          expect(shopCell?.discountLabel.isHidden).to(beTrue())
        }
      }

      context("when there is discount but empty") {
        beforeEach {
          shopCell = ShopTableViewCell(style: .default, reuseIdentifier: nil)
          let shop = Shop(name: "黄焖鸡米饭", avatarName: "avatarIconName", rating: 4.9, discount: [], isExpress: false, timeReliability: false)
          shopCell?.configure(shop: shop)
        }

        it("hides discount") {
          expect(shopCell?.discountLabel.isHidden).to(beTrue())
        }
      }
    }
  }
}
