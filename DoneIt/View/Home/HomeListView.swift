//
//  HomeListView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 11/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct HomeListView: View {
    
    @State var homePageTitle: String = "My Lists"
    @Binding var displayMode: NavigationBarItem.TitleDisplayMode
    var taskLists = Singleton.shared.taskLists
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Lists")
                .font(.title)
                .bold()
            List(self.taskLists) { taskList in
                //https://www.hackingwithswift.com/quick-start/swiftui/building-a-menu-using-list
                NavigationLink(destination: TaskListView(selectedList: taskList, displayMode: self.$displayMode, listTitle: taskList.name)) {
                    HomeListItemView(listName: taskList.name)
                }
            }
            .cornerRadius(12)
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
        .padding()
        
    }
}

//struct HomeListView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeListView()
//    }
//}
