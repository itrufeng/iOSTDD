//
// Created by Jian Zhang on 1/15/18.
// Copyright (c) 2018 itrufeng. All rights reserved.
//

import Foundation

struct Discount {
  let type: String
  let message: String
}

struct Shop {
  let name: String
  let avatarName: String
  let rating: Float
  let discount: [Discount]?
  let isExpress: Bool
  let timeReliability: Bool
}

let data = [
  Shop(name: "瑾瑜嘿店料理店",
      avatarName: "jinyuheidian",
      rating: 3.9,
      discount: [
        Discount(type: "减",
            message: "满10减8，满25减11，满40减19，满70减28...")
      ],
      isExpress: true,
      timeReliability: true),
  Shop(name: "小竹签烤肉（阿房路店）",
      avatarName: "xiaozhuqian",
      rating: 4.7,
      discount: nil,
      isExpress: true,
      timeReliability: true),
  Shop(name: "正宗老北京冰糖葫芦（土门店）",
      avatarName: "tanghulu",
      rating: 4.2,
      discount: [
        Discount(type: "减",
            message: "满20减10，满30减15"),
        Discount(type: "首",
            message: "新用户下单立减15元")
      ],
      isExpress: false,
      timeReliability: false),
  Shop(name: "二小酸菜面烧烤海鲜锅贴",
      avatarName: "erxiaosuancai",
      rating: 4.1,
      discount: [
        Discount(type: "减",
            message: "满30减5，满60减8，满100减15"),
        Discount(type: "首",
            message: "新用户下单立减15元")
      ],
      isExpress: false,
      timeReliability: false),
  Shop(name: "吉熊堡堡炸鸡汉堡（土门店）",
      avatarName: "jixiongbaobao",
      rating: 4.8,
      discount: [
      ],
      isExpress: false,
      timeReliability: false)
]
