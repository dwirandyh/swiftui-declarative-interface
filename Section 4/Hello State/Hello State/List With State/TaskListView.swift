//
//  TaskListView.swift
//  Hello State
//
//  Created by Dwi Randy Herdinanto on 08/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation
import SwiftUI

struct TaskListView: View {
    
    @State var tasks = [Task]()
    
    private func addTask(){
        self.tasks.append(Task(name: "New Task"))
    }
    
    var body: some View {
        List{
            Button(action: addTask) {
                Text("Add Task")
            }
            
            ForEach(self.tasks) { task in
                Text(task.name)
            }
        }
    }
}

#if DEBUG
struct TaskListView_Previews : PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
#endif
