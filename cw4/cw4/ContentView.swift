//
//  ContentView.swift
//  cw4
//
//  Created by ghadeer almajed on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var groceries = ["lettuce", "milk", "banana", "snickers", "ketchup"]
    @State var item = ""
    var body: some View {
    
        VStack {
            List(groceries, id: \.self) {
            grocery in
             
                HStack {
                    Image(grocery)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 82, height: 75)
                    Text(grocery)
                    
                }
               
        }
            HStack {
                Image(systemName: "plus")
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
                    .background(.green)
                    .onTapGesture {
                        groceries.append(item)
                        
                            
                    }
                TextField("Enter the item" , text: $item)
                HStack{
                    Image(systemName: "minus")
                        .clipShape(Capsule())
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                        .background(.green)
                        .onTapGesture {
                            groceries.remove(at:0)
                            
                            }
                    HStack {
                        Image("question")
                            .resizable()
                        
                            .clipShape(Capsule())
                            .foregroundColor(.white)
                            .frame(width: 20, height: 20)
                            .background(.green)
                            .onTapGesture {
                                let randomItem = groceries.randomElement() ?? "egg"
                                groceries.append(randomItem)
                        }
                        }

                }
            }
            
           

        }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
