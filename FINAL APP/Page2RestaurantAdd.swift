//
//  Page2RestaurantAdd.swift
//  FINAL APP
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct Page2RestaurantAdd: View {
    
    @State var place = ""
    @State var rating: Int?
    @State var comments = ""
    @State var choiceMade = "Options"
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color(uiColor: UIColor(red: 253/255, green: 100/255, blue: 97/255, alpha: 255/255)),
                    Color(uiColor: UIColor(red: 254/255, green: 195/255, blue: 194/255, alpha: 230/255)),
                    Color(uiColor: UIColor(red: 244/255, green: 183/255, blue: 126/255, alpha: 200/255)),
                ]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
                VStack {
                    Text("Add Your Restaurant")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        .padding(20.0)
                    HStack (spacing: 20.0) {
                        Text("Restaurant Name:")
                            .font(.title3)
                            .foregroundColor(Color.red)
                        TextField("Type here", text: $place)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .background(Color.white)
                            .cornerRadius(5)
                    }
                    .padding()
                    HStack {
                        Text("Rating:")
                            .font(.title3)
                            .foregroundColor(Color.red)
                        RatingView(rating: $rating)
                        Text(rating != nil ? "You rating: \(rating!)" : "")
                    }
                    .padding()
                    HStack (spacing: 20.0) {
                        Text("Comments:")
                            .font(.title3)
                            .foregroundColor(Color.red)
                        TextField("Type here", text: $comments)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .background(Color.white)
                            .cornerRadius(5)
                    }
                    .padding()
                    HStack {
                        Text("Cuisine:")
                            .font(.title3)
                            .foregroundColor(Color.red)
                        Menu{
                            Button(action: {
                                choiceMade = "Chinese"
                            }, label: {
                                Text("Chinese")
                            })
                            Button(action: {
                                choiceMade = "Italian"
                            }, label: {
                                Text("Italian")
                            })
                            Button(action: {
                                choiceMade = "Mediterranean"
                            }, label: {
                                Text("Mediterranean")
                            })
                            Button(action: {
                                choiceMade = "Japanese"
                            }, label: {
                                Text("Japanese")
                            })
                            Button(action: {
                                choiceMade = "Indian"
                            }, label: {
                                Text("Indian")
                            })
                            Button(action: {
                                choiceMade = "Mexican"
                            }, label: {
                                Text("Mexican")
                            })
                            Button(action: {
                                choiceMade = "Fast Food"
                            }, label: {
                                Text("Fast Food")
                            })
                            Button(action: {
                                choiceMade = "Thai"
                            }, label: {
                                Text("Thai")
                            })
                        } label: {
                            Label(
                                title: {Text("\(choiceMade)") },
                                icon: {Image(systemName: "plus")}
                            )

                        }
                        
                        
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                    }
                    
                    .padding()
                    
                        //restaurantData["Place"] = "\($place)"
                       // restaurantData["Rating"] = "\($rating)"
                        //restaurantData["Comments"] = "\($comments)"
                       // restaurantData["Choice"] = "\($choiceMade)"
                        
                    
                    
                    NavigationLink(destination: Page3DishAdd()) {
                        Text("+ Dish")
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                       
                        
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
        }
        
        
    


struct Page2RestaurantAdd_Previews: PreviewProvider {
    static var previews: some View {
        Page2RestaurantAdd(place: "", comments: "")
    }
}
