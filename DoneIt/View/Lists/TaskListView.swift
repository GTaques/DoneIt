//
//  TaskListView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 02/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    
    @State var selectedList: TaskList
    
    var listTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            List(self.selectedList.tasks) { task in
                //Currently it displays all tasks
                //Implement filter by 'Completed' later
                TaskListItemView(itemStatus: task.completed, task: task)
            }
            Button(action: {
                //Display an ActionSheet
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(.purple)
                        .frame(width: 28, height: 28, alignment: .center)
                    Text("New Reminder").foregroundColor(.black)
                }
            }
        }
        .padding(.horizontal)
        .navigationBarTitle(listTitle)
        .navigationBarItems(trailing: Button(action: {
            //Open Action Sheet
        }) {
            Image(systemName: "ellipsis.circle.fill")
            .resizable()
                .frame(width: 28, height: 28, alignment: .center)
        })
        
    }
}

//struct TaskListView_Previews: PreviewProvider {
//
//    @Binding var taskList: TaskList
//
//    static var previews: some View {
//        TaskListView(selectedList: taskList, listTitle: "Some cool title")
//    }
//}
