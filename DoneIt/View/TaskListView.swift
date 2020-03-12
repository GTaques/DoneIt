//
//  TaskListView.swift
//  DoneIt
//
//  Created by Gabriel Taques on 02/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    var listTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            List {
                Text("")
            }
            Button(action: {
                
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

struct TaskListView_Previews: PreviewProvider {
    
    static var previews: some View {
        TaskListView(listTitle: "Some cool title")
    }
}
