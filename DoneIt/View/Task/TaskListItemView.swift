//
//  TaskListItemView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 12/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct TaskListItemView: View {
    
    @State var itemStatus: Bool = false
    @State var task: TaskItem
    
    var body: some View {
        HStack {
            Image(systemName: itemStatus ? "largecircle.fill.circle" : "circle")
                .resizable()
                .frame(width: 24, height: 24, alignment: .leading)
                .foregroundColor(.coral)
                .onTapGesture {
                    self.toggleItemStatus()
            }
            VStack {
                Text(task.title)
                //Date and Time here
            }
            
        }
    }
    
    func toggleItemStatus() {
        itemStatus.toggle()
    }
    
}

struct TaskListItemView_Previews: PreviewProvider {
    
    @State static var task: TaskItem = TaskItem(title: "Gain a lot of money", remindMeOnDay: true, completed: false, remindMeLocation: false, flagged: false)
    
    static var previews: some View {
        TaskListItemView(task: task)
    }
}
