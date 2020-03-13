//
//  HomeGadgetView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 11/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct HomeGadgetView: View {
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 15) {
                HStack(spacing: 15) {
                    NavigationLink(destination: TodayListView()) {
                        GadgetItemView()
                        .cornerRadius(12)
                    }
                    
                    GadgetItemView()
                        .cornerRadius(12)
                }
                HStack(spacing: 15) {
                    GadgetItemView()
                        .cornerRadius(12)
                    GadgetItemView()
                        .cornerRadius(12)
                }
            }
        }
        
    }
}

struct HomeGadgetView_Previews: PreviewProvider {
    static var previews: some View {
        HomeGadgetView()
    }
}
