//
//  TaskCellViewModel.swift
//  To-Do-Firebase
//
//  Created by Kevin Chen on 4/24/2020.
//  Copyright © 2020 New York University. All rights reserved.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: Task
    
    var id = ""
    @Published var completionStateIconName = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    init(task: Task) {
        self.task = task
        
        $task
            .map { task in
                task.completed ? "checkmark.circle.fill" : "circle"
        }
        .assign(to: \.completionStateIconName, on: self)
        .store(in: &cancellables)
        
        $task
            .map { task in
                task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
