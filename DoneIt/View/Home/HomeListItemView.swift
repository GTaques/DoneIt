//
//  HomeListItemView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 11/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct HomeListItemView: View {
    
    @State var listName: String
//    @Binding var imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: "pencil")
                .frame(width: 44, height: 44, alignment: .center)
            Text(listName)
            Spacer()
            Text("2") 
        }
    }
}

//struct HomeListItemView_Previews: PreviewProvider {
//
//    @Binding var listName: String
//
//    static var previews: some View {
//        HomeListItemView(listName: $listName)
//    }
//}
