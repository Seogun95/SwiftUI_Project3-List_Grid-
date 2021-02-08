//
//  Array_Extension.swift
//  SwiftUI_Project3-List_Grid-
//
//  Created by 김선중 on 2021/02/09.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
