//
//  GadgetItemView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 11/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct GadgetItemView: View {
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
                            Spacer()
                            Text("Today")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                                .bold()
                        }
                        Spacer()
                        Text("1")
                            .font(.title)
                            .bold()
                    }
            }
            .padding()
            .frame(height: geometry.size.height, alignment: .center)
            .background(Color.black)
        }
        
        
    }
}

struct GadgetItemView_Previews: PreviewProvider {
    static var previews: some View {
        GadgetItemView()
    }
}
