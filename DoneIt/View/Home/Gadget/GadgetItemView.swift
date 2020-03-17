//
//  GadgetItemView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 11/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct GadgetItemView: View {
    
    var itemTitle: String
    var iconColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            Button(action: {
                print("fnjewnfjwe")
                }) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Image(systemName: "pencil.circle.fill")
                            .resizable()
                                .frame(width: 28, height: 28, alignment: .center)
                                .foregroundColor(self.iconColor)
                            Spacer()
                            Text(self.itemTitle)
                                .foregroundColor(.gray)
                                .font(.subheadline)
                                .bold()
                        }
                        Spacer()
                        Text("1")
                            .foregroundColor(.black)
                            .font(.title)
                            .bold()
                    }
            }
            .padding()
            .frame(height: geometry.size.height, alignment: .center)
            .background(Color.white)
        }
        
        
    }
}

struct GadgetItemView_Previews: PreviewProvider {
    static var previews: some View {
        GadgetItemView(itemTitle: "Today", iconColor: .red)
    }
}
