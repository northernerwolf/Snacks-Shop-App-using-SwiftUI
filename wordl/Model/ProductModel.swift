//
//  ProductModel.swift
//  wordl
//
//  Created by Guwanch Haldurdyyev on 31.10.2024.
//

import SwiftUI

struct Product: Identifiable{
    var id: UUID = .init()
    var name:String
    var category:String
    var image: String
    var price:Int
    var color: Color
}


var productList = [
    Product(name:"Good Source", category: "Choco", image: "lays", price: 7, color: .yellow),
    Product(name:"Unreal Muffina", category: "Choco", image: "lays", price: 7, color: .red),
    Product(name:"Twister Chips", category: "Chips", image: "", price: 7, color: .pink),
    Product(name:"Twister Chips", category: "Chips", image: "", price: 7, color: .green),
    Product(name:"Twister Chips", category: "Chips", image: "", price: 7, color: .blue),
    Product(name:"Twister Chips", category: "Chips", image: "", price: 7, color: .brown),
    Product(name:"Unreal Muffina", category: "Choco", image: "", price: 7, color: .orange),
    Product(name:"Unreal Muffina", category: "Choco", image: "", price: 7, color: .purple),
    Product(name:"Unreal Muffina", category: "Choco", image: "", price: 7, color: .blue),

]
