//
//  ContentView.swift
//  HabitTracker
//
//  Created by Wenxi Lan on 2023/8/5.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Content")
                .navigationBarTitle("Tracker", displayMode: .inline)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
