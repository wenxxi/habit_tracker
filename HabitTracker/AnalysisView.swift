//
//  AnalysisView.swift
//  HabitTracker
//
//  Created by Wenxi Lan on 2023/8/8.
//

import SwiftUI

struct AnalysisView: View{
    @State private var start_date = Date()
    var body: some View{
        NavigationView{
            VStack{
                HStack(alignment: .top){
                    Spacer()
                    Spacer()
                    Spacer()
                    VStack{
                        Text("FROM")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.bottom)
                            .padding()
                        Text("TO")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    VStack{
                        DatePicker("", selection: $start_date, displayedComponents: .date).padding([.top, .bottom, .trailing])
                        DatePicker("", selection: $start_date, displayedComponents: .date).padding([.bottom, .trailing])
                    }
                    Spacer()
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    Spacer()

                    GeometryReader{ geometry in
                        let recWidth = geometry.size.width * 0.6
                        let recHeight = geometry.size.height
                        VStack{
                            Text("Habit1").font(.title3).fontWeight(.bold).padding([.top, .bottom, .trailing])
                        }
                        VStack(alignment: .center){
                            Rectangle()
                            .frame(width: recWidth, height: recHeight)
                            .foregroundColor(Color.clear)
                            .overlay(Rectangle().frame(width: nil, height: 2, alignment: .top).foregroundColor(Color.blue), alignment: .top)
                            .overlay(Rectangle().frame(width: 2, height: nil, alignment: .leading).foregroundColor(Color.blue), alignment: .leading)
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Analysis")
                        .font(.title)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink {
                        ContentView()
                    } label: {
                        Image(systemName:"house.fill")
                    }

                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    struct AnalysisView_Previews: PreviewProvider {
        static var previews: some View {
            AnalysisView()
        }
    }
}
