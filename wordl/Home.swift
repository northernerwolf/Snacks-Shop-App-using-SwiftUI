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
