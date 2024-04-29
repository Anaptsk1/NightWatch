//
//  ContentView.swift
//  NightWatch
//
//  Created by Ana Ptskialadze on 14.04.24.
//

import SwiftUI

let nightlyTasks = [
    "- Check all Windows",
    "- Check all doors",
    "- Check that the safe is locked",
    "- Check the mailbox",
    "- Inspect Security Cameras",
    "- Clear ice from sidewalks",
    "- Document \"strange and unusual\" occurrences"
]

let weeklyTasks = [
    "- Check inside all vacant rooms",
    "- Walk the perimeter of property"
]

let monthlyTasks = [
    "- Test security alarm",
    "- Test motion detectors",
    "- Test smoke alarms",
]

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                
                Section(header: TaskSectionHeader(symbolName: "moon.stars", headerText: "Nightly Tasks")) {
                    ForEach(nightlyTasks, id: \.self) { taskName in
                        NavigationLink(taskName, destination: Text(taskName))
                    }}
                
                Section(header: TaskSectionHeader(symbolName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach(weeklyTasks, id: \.self) { taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                    }}
            
                Section(header: TaskSectionHeader(symbolName: "calendar", headerText: "Monthly Tasks")) {
                        
                        ForEach(monthlyTasks, id: \.self) { taskName in
                            NavigationLink(taskName, destination: Text(taskName))
                        }}
            }
            .navigationTitle("Home")
        }
    }
}

struct TaskSectionHeader: View {
    let symbolName: String
    let headerText: String
    
    var body: some View {
        HStack {
            Image(systemName: symbolName)
            Text(headerText)
        }
        .font(.title3)
    }
}













#Preview {
    ContentView()
}




