//
//  AddHabitView.swift
//  HabitTracker
//
//  Created by Wenxi Lan on 2023/8/18.
//
import SwiftUI
import Foundation

struct AddHabitView: View{
    var body: some View {
        NavigationView{
            VStack{
                Text("TODO")
                
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
        struct AddHabitView_Previews: PreviewProvider {
            static var previews: some View {
                AddHabitView()
            }
        }
}
