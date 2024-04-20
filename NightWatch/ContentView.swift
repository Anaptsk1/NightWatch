//
//  ContentView.swift
//  NightWatch
//
//  Created by Ana Ptskialadze on 14.04.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    // MARK: Nightly Tasks
                    HStack {
                        Text(Image(systemName: "moon.stars"))
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .fontWeight(.heavy)
                        Text("Nightly Tasks")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                        .underline()
                    }
                    Text("- Check all Windows")
                    Text("- Check all doors")
                    Text("- Check that the safe is locked")
                    Text("- Check the mailbox")
                    Text("- Inspect Security Cameras")
                    Text("- Clear ice from sidewalks")
                    Text("Document \"strange and unusual\" occurrences")
                    Divider()
                    // MARK: Weekly Tasks
                    HStack {
                        Text(Image(systemName: "sunset"))
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .fontWeight(.heavy)
                        Text("Weekly Tasks")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                            .underline()
                            .padding(.top)
                    }
                    Text("- Check inside all vacant rooms")
                    Text("- Walk the perimeter of property")
                    Divider()
                    // MARK: Monthly Tasks
                    HStack {
                        Text(Image(systemName: "calendar"))
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .fontWeight(.heavy)
                        Text("Monthly Tasks")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                            .underline()
                        .padding(.top)
                    }
                    Text("- Test security alarm")
                    Text("- Test motion detectors")
                    Text("- Test smoke alarms")
                }
                .padding([.top, .leading])
                .foregroundColor(.gray)
                Spacer()
            }
            Spacer()
        }
        
    }
    
}

#Preview {
    ContentView()
}
