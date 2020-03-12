//
//  List.swift
//  DoneIt
//
//  Created by Gabriel Taques on 02/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import Foundation

struct TaskList: Identifiable {
    
    var id = UUID()
    var name: String
    var tasks: [TaskItem]
}
