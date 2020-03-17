//
//  HomeView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 02/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI
import UIKit

struct HomeView: View {
    
    @State var displayMode: NavigationBarItem.TitleDisplayMode = .inline
    @State var selectedListTitle: String = ""
    @State var searchText: String = ""
    
    init() {
        UINavigationBar.appearance().barTintColor = .lightGray
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.systemLightGray.edgesIgnoringSafeArea(.all)
                GeometryReader {  geometry in
                    VStack(alignment: .leading) {
                        SearchBar(textToSearch: self.$searchText)
                        HomeGadgetView()
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.22)
                        HomeListView(displayMode: self.$displayMode)
                    }
                }
                .navigationBarTitle("", displayMode: displayMode)
                .navigationBarItems(trailing: Button(action: {
                }) {
                    Text("Edit")
                })
            }
            
        }
        
        
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
