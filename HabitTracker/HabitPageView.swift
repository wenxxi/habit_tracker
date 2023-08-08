//
//  HabitPage.swift
//  HabitTracker
//
//  Created by Wenxi Lan on 2023/8/8.
//

import SwiftUI
import Foundation

struct HabitPageView: View{
    let calendar = Calendar.current
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter
    }()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("2023")
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7), spacing: 10){
                    
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Habit")
                        .font(.title)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action:{}, label:{Image(systemName: "house.fill")})
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{}, label:{Image(systemName: "square.and.pencil")})
                }
                
                
                
            }
        }
        
    }
        struct HabitPageView_Previews: PreviewProvider {
            static var previews: some View {
                HabitPageView()
            }
        }
}
