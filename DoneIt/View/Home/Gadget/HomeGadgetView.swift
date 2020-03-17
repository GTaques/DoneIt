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
                        GadgetItemView(itemTitle: "Today", iconColor: .blue)
                        .cornerRadius(12)
                    }
                    
                    GadgetItemView(itemTitle: "Scheduled", iconColor: .orange)
                        .cornerRadius(12)
                }
                HStack(spacing: 15) {
                    GadgetItemView(itemTitle: "All", iconColor: .gray)
                        .cornerRadius(12)
                    GadgetItemView(itemTitle: "Flagged", iconColor: .orangeRed)
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal)
        }
        
    }
}

struct HomeGadgetView_Previews: PreviewProvider {
    static var previews: some View {
        HomeGadgetView()
    }
}
