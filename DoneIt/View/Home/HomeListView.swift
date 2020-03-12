//
//  HomeListView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 11/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct HomeListView: View {
    
    var taskLists: [TaskList] = [
        TaskList(name: "Work", tasks: [
            TaskItem(title: "", remindMeOnDay: true, remindMeLocation: false, flagged: false),
            TaskItem(title: "", remindMeOnDay: true, remindMeLocation: false, flagged: false)
        ]),
        TaskList(name: "Family", tasks: [
            TaskItem(title: "", remindMeOnDay: true, remindMeLocation: false, flagged: false),
            TaskItem(title: "", remindMeOnDay: true, remindMeLocation: false, flagged: false)
        ])
    ]
    
    var body: some View {
        List(self.taskLists) { taskList in
       
            //https://www.hackingwithswift.com/quick-start/swiftui/building-a-menu-using-list
            NavigationLink(destination: TaskListView(listTitle: taskList.name)) {
                HomeListItemView(listName: taskList.name)
            }
        }
    .cornerRadius(12)
    }
}

struct HomeListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView()
    }
}
