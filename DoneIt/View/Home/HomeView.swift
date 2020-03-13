//
//  HomeView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 02/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedListTitle: String = ""
    
    var body: some View {
        NavigationView {
            GeometryReader {  geometry in
                VStack(alignment: .leading) {
                    HomeGadgetView()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.25)
                        .padding(.bottom)
                    Text("My Lists").font(.title).bold()
                    HomeListView()
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Open sheet")
                        }) {
                            Text("Add List")
                        }
                        .padding()
                    }
                }
            }
            .navigationBarItems(trailing: Button(action: {
            }) {
                Text("Edit")
            })
                .padding(.horizontal)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
