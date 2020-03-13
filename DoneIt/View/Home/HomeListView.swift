//
//  HomeListView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 11/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct HomeListView: View {
    
    var taskLists = Singleton.shared.taskLists
    
    var body: some View {
        List(self.taskLists) { taskList in
            
            //https://www.hackingwithswift.com/quick-start/swiftui/building-a-menu-using-list
            NavigationLink(destination: TaskListView(selectedList: taskList, listTitle: taskList.name)) {
                HomeListItemView(listName: taskList.name)
            }
        }
        .cornerRadius(12)
        .border(Color.lightGray, width: 2)
    }
}

struct HomeListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView()
    }
}
