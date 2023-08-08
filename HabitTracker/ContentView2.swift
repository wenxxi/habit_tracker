//
//  ContentView.swift
//  HabitTracker
//
//  Created by Wenxi Lan on 2023/8/5.
//

import SwiftUI


struct ContentView2: View {
    var body: some View {
        NavigationView {
            VStack{
                Text(Date(), style: .date)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                VStack{
                    HStack(alignment: .top){
                        HStack(alignment: .firstTextBaseline){
                            Image(systemName:"book.fill").foregroundColor(Color.white).padding()
                            Text("Habit1").font(.title3).fontWeight(.bold).foregroundColor(Color.white).padding()
                        }
                        Spacer()
                        Button(action:{
                            //button function
                        }){

                            Color.blue
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius:10)
                                        .stroke(Color.white, lineWidth:2)
                                )

                        }
                    }
                    //Spacer()
                    HStack{
                        ForEach(0..<7){ index in
                            Circle()
                                .stroke(Color.white, lineWidth: 2)
                            .frame(width:10,height:10)
                            
                        }
                        
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                    .frame(width: 300, height: 80)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                Spacer()
            }
            .padding()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal){
                        Text("Tracker")
                            .font(.title)
                            .fontWeight(.bold)
                            
                            
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action:{}, label:{Image(systemName: "plus.app.fill" )
                            .resizable()})
                    }
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action:{}, label:{Image(systemName: "chart.bar.fill")})
                    }
                    
                }
               
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
