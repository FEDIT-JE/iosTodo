//
//  StatusIndicator.swift
//  ToDo List
//
//  Created by Jan Eggenberger on 02.05.2024.
//

import SwiftUI

struct StatusIndicator: View {
    var status: TodoStatus

    var body: some View {
        let backgroundColor: Color = {
                        switch status {
                        case .completed:
                            return Color.green
                        case .pending:
                            return Color.orange
                        }
                    }()

        Text(status == .completed ? "Completed" : "Pending")
            .font(.footnote)
            .foregroundColor(.white)
            .padding(8)
            .background(backgroundColor)
            .clipShape(Capsule())
    }
}
