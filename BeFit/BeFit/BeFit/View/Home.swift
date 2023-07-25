//
//  Home.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-18.
//

import SwiftUI

struct Home: View{
    //UI Properties
    @State var currentWeek: [Date] = []
    @State var currentDate: Date = Date()
    
    var body: some View{
        VStack(spacing: 20){
            HStack{
                Text("Current Week")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.title3)
                }
            }
            .foregroundColor(.white)
            
            //Current Week View
            HStack(spacing: 10){
                ForEach(currentWeek, id: \.self){
                    //NOTE: Customize later for better UI
                    date in Text(extractDate(date: date))
                        .fontWeight(isSameDay(date1: currentDate, date2: date) ? .bold : .semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, isSameDay(date1: currentDate, date2: date) ? 6 : 0)
                        .padding(.horizontal, isSameDay(date1: currentDate, date2: date) ? 10 : 0)
                        .frame(width: isSameDay(date1: currentDate, date2: date) ? 140 : nil)
                        .background{
                            Capsule()
                                .fill(.ultraThinMaterial)
                                .environment(\.colorScheme, .light)
                                .opacity(isSameDay(date1: currentDate, date2: date) ? 0.8 : 0)
                        }
                        .onTapGesture{
                            withAnimation{
                                currentDate = date
                            }
                        }
                }
            }
            .padding(.top, 10)
            
            VStack(alignment: .leading, spacing: 8){
                //Temporary DATA prior to implementantion
                Text("Steps")
                    .fontWeight(.semibold)
                
                Text("6,243")
                    .font(.system(size: 45, weight: .bold))
                //Temporary DATA
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 15)
            
            //Fitness Ring View
            FitnessRingCardView()
            
            //Pie Chart View
            WorkoutPieChartView()
            
        }
        .padding()
        .onAppear(perform: exctractCurrentWeek)
    }
    
    //Extracting current Week information
    func exctractCurrentWeek(){
        let calendar = Calendar.current //Utilize built in function for calendar build
        let week = calendar.dateInterval(of: .weekOfMonth, for: Date())
        
        guard let firstDay = week?.start else{
            return
        }
        (0..<7).forEach {day in
            if let weekDay = calendar.date(byAdding: .day, value: day, to: firstDay){
                currentWeek.append(weekDay)
            }
        }
    }
    
    //Extracting Custom Date Components
    func extractDate(date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateFormat = (isSameDay(date1: currentDate, date2: date) ? "MMM dd" : "dd") //Edit this for Calendar format
        
        return (isDateToday(date: date) && isSameDay(date1: currentDate, date2: date) ? "Today, " : "") + formatter.string(from: date) //checks if today is the date selected
    }
}

//Day Checkers
func isDateToday(date: Date)->Bool{ //used for a Today, Feature
    let calendar = Calendar.current
    
    return calendar.isDateInToday(date)
}

func isSameDay(date1: Date, date2: Date)->Bool{ //if the selected day is the same as another
    let calendar = Calendar.current
    return calendar.isDate(date1, inSameDayAs: date2)
}


struct Home_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
