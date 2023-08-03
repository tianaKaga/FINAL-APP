//
//  Page3DishAdd.swift
//  FINAL APP
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct Page3DishAdd: View {
    
    @State var dishName = ""
    @State var dishComment = ""
    @State var rating: Int?
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color(uiColor: UIColor(red: 253/255, green: 100/255, blue: 97/255, alpha: 255/255)),
                    Color(uiColor: UIColor(red: 254/255, green: 195/255, blue: 194/255, alpha: 230/255)),
                    Color(uiColor: UIColor(red: 244/255, green: 183/255, blue: 126/255, alpha: 200/255)),
                ]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
                
                VStack{
                    
                    Text("Add your dish!")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        .padding(20.0)
                    
                    
                    
                    HStack {
                        
                        Text("Dish:")
                            .font(.title3)
                            .foregroundColor(Color.red)
                            
                        
                        TextField("type here", text: $dishName)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .background(Color.white)
                            .cornerRadius(5)
                            .padding()
                        
                        
                    }
                    .padding()
                    
                    HStack{
                        Text("Rate:")
                            .font(.title3)
                            .foregroundColor(Color.red)
                        RatingView(rating: $rating)
                        Text(rating != nil ? "Your rating: \(rating!)" : "")
                        
                    }
                    HStack {
                            Text("Comments:")
                                .font(.title3)
                                .foregroundColor(Color.red)
                                .padding()
                            TextField("type here", text: $dishComment)
                                .multilineTextAlignment(.center)
                                .font(.title3)
                                .background(Color.white)
                                .cornerRadius(5)
                                .padding()
                        }
                        .padding()
                        
                   // NavigationLink(destination: searchingForNewView()) {
                   //     Text("Save")
                   // }
            
                        .font(.title)
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                        .padding()
                         
                        
                    
                }
                
            
            }
            
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    HStack(spacing: 40){

                        NavigationLink(destination: HomePage()) {
                            Text("Home Page")
                        }
                        .font(.title)
                        .tint(.red)
                        .padding()
                        
                        NavigationLink(destination: searchingForCuisine()) {
                            Text("Search")
                            
                        }
                        .font(.title)
                        .tint(.red)
                        .padding()
                    }
    
                    
                    
                    }
                }

        }
        
    }
        
    }


struct Page3DishAdd_Previews: PreviewProvider {
    static var previews: some View {
        Page3DishAdd(dishName: "", dishComment: "")
    }
}
