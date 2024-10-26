//
//  CategoryModel.swift
//  wordl
//
//  Created by Guwanch Haldurdyyev on 26.10.2024.
//

import SwiftUI

struct CategoryModel : Identifiable , Hashable{
    var id: UUID = .init()
    var icon : String
    var title: String

}

var categoryList: [CategoryModel] = [
    CategoryModel(icon : "", title: "All"),
    CategoryModel(icon : "bubble.fill", title: "Choco"),
    CategoryModel(icon : "waffles", title: "Waffles"),
    CategoryModel(icon : "toffee", title: "Toffee"),
    
]
