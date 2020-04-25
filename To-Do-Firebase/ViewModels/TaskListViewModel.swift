//
//  TaskListViewModel.swift
//  To-Do-Firebase
//
//  Created by Kevin Chen on 4/24/2020.
//  Copyright © 2020 New York University. All rights reserved.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskRepository = TaskRepository()
    @Published var taskCellViewModels = [TaskCellViewModel]()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        taskRepository.$tasks.map { tasks in // collection of tasks
            tasks.map { task in
                TaskCellViewModel(task: task)
            }
        }
        .assign(to: \.taskCellViewModels, on: self)
        .store(in: &cancellables)
//        self.taskCellViewModels = testDataTasks.map { task in
//            TaskCellViewModel(task: task)
//        }
    }
    
    func addTask(task: Task) {
        taskRepository.addTask(task)
        // let taskVM = TaskCellViewModel(task: task)
        // self.taskCellViewModels.append(taskVM)
    }
}
