//
//  searchingFor.swift
//  FINAL APP
//
//  Created by Scholar on 8/3/23.
//

import SwiftUI

struct searchingForChinese: View {
    @State private var searchText = ""
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
          .edgesIgnoringSafeArea(.all)
          VStack {
              List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink(destination:
                
                    
                    
                    ) {
                    Text(name)
                  } label: {
                    Text(name)
                  }
                }
              }
              .scrollContentBackground(.hidden)
              .navigationTitle("Italian")
            }
           
            .searchable(text: $searchText)
            var searchResults: [String] {
              if searchText.isEmpty {
                return names
              } else {
                return names.filter { $0.contains(searchText) }
              }
        
            }
            
        }

        }
      }
    }


struct searchingFor_Previews: PreviewProvider {
    static var previews: some View {
        searchingForChinese()
    }
}
