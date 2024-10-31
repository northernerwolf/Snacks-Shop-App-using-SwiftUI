//
//  Home.swift
//  wordl
//
//  Created by Guwanch Haldurdyyev on 26.10.2024.
//

import SwiftUI

struct Home: View {
    
    @State var  selectedCategory = ""
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Order From The Best OF **Snacks**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70, height: 90)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                    
                }
                .padding(30)
                
                CategoryListView
                
                HStack{
                    Text("Choco **Collections**")
                        .font(.system(size:24))
                    
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                        .imageScale(.large)
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 15)
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(productList, id:\.id ){ item in
                           ProductCard(product: item)
                        }
                    }
                }
            }
            
        }
    }
    
     
var CategoryListView: some View{
    HStack{
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(categoryList, id: \.id){
                    item in
                    Button{
                        selectedCategory = item.title
                    } label: {
                    
                        HStack {
                            if item.title != "All" {
                                Image( item.icon)
                                    .foregroundColor(selectedCategory == item.title ? .yellow : .black)
                            }
                           
                            
                            Text(item.title)
                        }
                        .padding(20)
                        .background(selectedCategory == item.title ? .black :
                                .gray.opacity(0.1))
                        .foregroundColor(selectedCategory != item.title ? .black  : .white)
                        .clipShape(Capsule())
                    }
                }
//                arrow.forward
            }
            .padding(.horizontal , 30)
        }
    }
}
}

#Preview {
    Home()
}

struct ProductCard: View{
    
    var product:Product
    
    var body: some View {
        
        ZStack{
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .padding(.trailing, -200)
                .rotationEffect(Angle(degrees: 30))
            ZStack{
                VStack(alignment:.leading, content: {
                    Text("\(product.name)")
                        .font(.system(size: 36, weight: .semibold))
                        .frame(width:140)
                    Text(product.category)
                        .font(.callout)
                        .padding()
                        .background(.white.opacity(0.5))
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    HStack{
                        Text("$\(product.price).0")
                            .font(.system(size: 24, weight: .semibold))
                        Spacer()
                        Button{
                            
                        } label: {
                            Image(systemName: "basket")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 90, height: 68)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                            
                            
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.white.opacity(0.5))
                    .clipShape(Capsule())
                })
            }
            .padding(30)
            .frame(width: 336, height: 422)
        }
        .frame(width: 336, height: 422)
        .background(product.color.opacity(0.13))
        .clipShape(.rect(cornerRadius: 57))
        .padding(.leading , 20)
    }
}
