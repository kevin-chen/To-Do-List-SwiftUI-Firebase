//
//  ContentView.swift
//  To-Do-Firebase
//
//  Created by Kevin Chen on 4/24/2020.
//  Copyright © 2020 New York University. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    
    let tasks = testDataTasks
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(tasks) { task in
                    Image(systemName: "circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    Text(task.title)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add New Task")
                    }
                }
                .padding()
            }
            .navigationBarTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
