//
//  DetailsView.swift
//  NightWatch
//
//  Created by Ana Ptskialadze on 21.04.24.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder for task description")
            Text("Placeholder for mark complete button")
        }
    }
}

#Preview {
    DetailsView(taskName: "test")
}
