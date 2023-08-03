//
//  HomePage.swift
//  FINAL APP
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct HomePage: View {
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
                    Spacer ()
                    Text("Welcome to")
                      .font(.system(size : 40))
                      .fontWeight(.bold)
                      .foregroundColor(Color(hue: 1.0, saturation: 0.685, brightness: 0.912))
                    Text("HungryEater")
                      .font(.system(size : 60))
                      .fontWeight(.heavy)
                      .foregroundColor(Color(hue: 1.0, saturation: 0.028, brightness: 0.981))
                    Spacer()
                    Text("HungryEater helps you keep track of your eats!")
                      .foregroundColor(Color.white)
                      .font(.system(size : 25))
                      .multilineTextAlignment(.center)
                      .padding()
                    Spacer ()
                      Text ("Add In your past meals below 👇")
                      .foregroundColor(Color.white)
                      .font(.system(size : 25))
                      
                    Image("logo")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      //.frame (width: 300, height: 300)
                      .padding()
                      
                      NavigationLink(destination: Page2RestaurantAdd()) {
                          Text("+ Restaurant")
                      }
                      .font(.title)
                      .buttonStyle(.borderedProminent)
                      .tint(.red)
                      
                      Spacer()
//
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

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
