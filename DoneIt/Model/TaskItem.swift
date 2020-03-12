//
//  Task.swift
//  DoneIt
//
//  Created by Gabriel Taques on 02/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import UIKit

struct TaskItem: Identifiable {
    
    var id = UUID()
    
    var title: String
    var notes: String?
    var url: String?
    
    var remindMeOnDay: Bool
    var remindDate:  Date?
    var remindTime: Date?
    var repeatAt: RepeatAt?
    
    //Implement Later
    var remindMeLocation: Bool
    var location: String?
    
    var flagged: Bool
    var priority: Priority?
    
    var images: [UIImage]?
}
