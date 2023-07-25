//
//  StepsGraph.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-20.
//

import SwiftUICharts
import SwiftUI

struct WorkoutPieChartView: View{
    var body: some View {
        VStack(spacing: 15) {
            Text("Workout Time")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("SecondaryShadows"))
            HStack(spacing: 20){
                
            }

        }
        .padding(.horizontal, 20)
        .padding(.vertical, 25)
        .background{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.ultraThinMaterial)
        }
    }
}

struct WorkoutPieCharView_Preivews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

