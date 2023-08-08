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
                        DatePicker("", selection: $start_date, displayedComponents: .date).padding()
                        DatePicker("", selection: $start_date, displayedComponents: .date).padding([.leading, .bottom, .trailing])
                    }
                    Spacer()
                }
                Spacer()
//                HStack{
//                    Text("FROM").font(.title3).fontWeight(.bold).padding()
//                    DatePicker("",selection: $start_date,displayedComponents: .date)
//                        .frame(width: 80.0, height: 30.0)
//                        .datePickerStyle(.compact)
//                        .padding(.all)
//                }
//                HStack{
//                    Text("TO").font(.title3).fontWeight(.bold).padding()
//                    DatePicker("",selection: $start_date,displayedComponents: .date)
//                        .frame(width: 80.0, height: 30.0)
//                        .datePickerStyle(.compact)
//                        .padding(.all)
//                }
//
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Analysis")
                        .font(.title)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action:{}, label:{Image(systemName:"house.fill")})
                }
            }
        }
    }
    struct AnalysisView_Previews: PreviewProvider {
        static var previews: some View {
            AnalysisView()
        }
    }
}
