//
//  Singleton.swift
//  DoneIt
//
//  Created by Gabriel Taques on 12/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import Foundation

class Singleton {
    
    static var shared: Singleton = Singleton()
    var taskLists: [TaskList] = [
        TaskList(name: "Work", tasks: [
            TaskItem(title: "Gain a lot of money", remindMeOnDay: true, completed: false, remindMeLocation: false, flagged: false),
            TaskItem(title: "Loose my mind", remindMeOnDay: true, completed: false, remindMeLocation: false, flagged: false)
        ]),
        TaskList(name: "Family", tasks: [
            TaskItem(title: "Share some love", remindMeOnDay: true, completed: false, remindMeLocation: false, flagged: false),
            TaskItem(title: "Enjoy their presence", remindMeOnDay: true, completed: false, remindMeLocation: false, flagged: false)
        ])
    ]
    
    
    private init() {
        
    }
}
