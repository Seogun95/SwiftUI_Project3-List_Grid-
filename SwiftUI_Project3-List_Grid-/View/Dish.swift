//
//  Dish.swift
//  SwiftUI_Project3-List_Grid-
//
//  Created by 김선중 on 2021/02/08.
//

import Foundation
import SwiftUI

struct Dish : Identifiable {
    
    //Dish를 구별하기 위해 고유 ID를 저장해줌
    let id = UUID()
    let name : String
    let price : Double
    let imageURL : String
    
}

extension Dish {
    static func all() -> [Dish] {
        return [
        
            Dish(name: "김치", price: 10000, imageURL: "Kimchi"),
            Dish(name: "스파게티", price: 8500, imageURL: "Spagetti"),
            Dish(name: "토스트", price: 3000, imageURL: "Toast"),
            Dish(name: "초밥", price: 12000, imageURL: "SuShi"),
            Dish(name: "스테이크", price: 25000, imageURL: "Steak"),
            Dish(name: "치킨", price: 17000, imageURL: "Chicken"),
            Dish(name: "팬케익", price: 6500, imageURL: "pancake")
        
        ]
    }
}
