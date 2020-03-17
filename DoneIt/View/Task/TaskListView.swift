//
//  TaskListView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 02/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    
    @State private var showingFormSheet: Bool = false
    @State var selectedList: TaskList
    @State var searchText: String = ""
    @Binding var displayMode: NavigationBarItem.TitleDisplayMode
    
    var listTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            SearchBar(textToSearch: $searchText)
            List(self.selectedList.tasks) { task in
                //Currently it displays all tasks
                //Implement filter by 'Completed' later
                TaskListItemView(itemStatus: task.completed, task: task)
            }
            Button(action: {
                //Display an ActionSheet
                self.showingFormSheet.toggle()
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(.purple)
                        .frame(width: 28, height: 28, alignment: .center)
                    Text("New Reminder").foregroundColor(.black)
                }
            }.padding(.horizontal)
                .buttonStyle(PlainButtonStyle())
        }
        .navigationBarTitle(listTitle)
        .navigationBarItems(trailing: Button(action: {
            //Open Action Sheet
        }) {
            Image(systemName: "ellipsis.circle.fill")
            .resizable()
                .frame(width: 28, height: 28, alignment: .center)
        })
            .sheet(isPresented: $showingFormSheet) {
                TaskFormView(showingFormSheet: self.$showingFormSheet)
        }
    }
    
    func changeDisplayMode() {
        displayMode = .large
    }
}

